class MailProcessor < ActionMailer::Base
	
	def receive(mail)
		from = mail.from_addrs.first.address
		puts "Receiving a message with the subject '#{mail.subject}' from '#{from}'"
		
		user = User.find_by_full_email(from)
		unless user
			user = User.create(:full_email => mail.from_addrs.first.address,
												 :email_name => MailProcessor.email_name(from))
			puts 'sending welcome email'
			Notifier.deliver_welcome(user)
		end
		
		mms = MMS2R::Media.new(mail, :logger => Rails.logger)
		images = []
		images += mms.media['image/jpeg'] unless mms.media['image/jpeg'].nil?
		images += mms.media['image/jpg'] unless mms.media['image/jpg'].nil?
		
		images.each do |image|
			begin
				image_info = EXIFR::JPEG.new(image)
				exisiting_photo = Photo.find_by_taken_at(MailProcessor.taken_at(image_info))
				
				photo = user.photos.new(:name => mms.subject,
														 :description => mms.body,
														 :image => File.new(image))
				photo.taken_at = MailProcessor.taken_at(image_info)
				photo.camera_model = image_info.model if image_info.model
				photo.latitude = MailProcessor.dms_degrees(image_info.exif.gps_latitude, image_info.exif.gps_latitude_ref) if image_info.exif.gps_latitude
				photo.longitude = MailProcessor.dms_degrees(image_info.exif.gps_longitude, image_info.exif.gps_longitude_ref) if image_info.exif.gps_longitude
				photo.save
				
				if exisiting_photo
					exisiting_photo.destroy
					Notifier.deliver_duplicate(user, photo)
				end
			rescue => e
				puts e
			end
		end
		mms.purge
	end
	
	def self.test
		mail = TMail::Mail.load("/var/www/photobagel.com/current/public/test.mail")
		from = mail.from_addrs.first.address
		puts "Receiving a message with the subject '#{mail.subject}' from '#{from}'"
		
		user = User.find_by_full_email(from)
		unless user
			user = User.create(:full_email => mail.from_addrs.first.address,
												 :email_name => MailProcessor.email_name(from))
			puts 'Creating new user. Sending welcome email'
			Notifier.deliver_welcome(user)
		end
		
		mms = MMS2R::Media.new(mail, :logger => puts)
		images = []
		images += mms.media['image/jpeg'] unless mms.media['image/jpeg'].nil?
		images += mms.media['image/jpg'] unless mms.media['image/jpg'].nil?
		
		images.each do |image|
			begin
				image_info = EXIFR::JPEG.new(image)
				exisiting_photo = Photo.find_by_taken_at(MailProcessor.taken_at(image_info))
				
				photo = user.photos.new(:name => mms.subject,
														 :description => mms.body,
														 :image => File.new(image))
				photo.taken_at = MailProcessor.taken_at(image_info)
				photo.camera_model = image_info.model if image_info.model
				photo.latitude = MailProcessor.dms_degrees(image_info.exif.gps_latitude, image_info.exif.gps_latitude_ref) if image_info.exif.gps_latitude
				photo.longitude = MailProcessor.dms_degrees(image_info.exif.gps_longitude, image_info.exif.gps_longitude_ref) if image_info.exif.gps_longitude
				photo.save
				
				if exisiting_photo
					puts 'Exisiting photo found.'
					puts 'Deleting old photo and sending warning email.'
					exisiting_photo.destroy
					Notifier.deliver_duplicate(user, photo)
				end
			rescue => e
				puts e
			end
		end
		mms.purge
	end
	
	def self.dms_degrees(dms, ref)
		final = dms[0] + (dms[1].to_f / 60) + (dms[2] / 3600)
		final = -final if %w(S W).include?(ref)
		final
	end
	
	def self.email_name(email)
		e = email.split('@')
		email = e[0]
	end
	
	def self.taken_at(image_info)
		image_info.date_time ? image_info.date_time.to_date : Date.today
	end
end
