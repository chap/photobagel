class MailProcessor < ActionMailer::Base
	
	def receive(mail)
		from = mail.from_addrs.first.address
		puts "Receiving a message with the subject '#{mail.subject}' from '#{from}'"
		
		user = User.find_by_full_email(from)
		user = User.create(:full_email => mail.from_addrs.first.address,
											 :email_name => MailProcessor.email_name(from)) unless user
		
		mms = MMS2R::Media.new(mail)
		images = []
		images += mms.media['image/jpeg'] unless mms.media['image/jpeg'].nil?
		images += mms.media['image/jpg'] unless mms.media['image/jpg'].nil?
		
		images.each do |image|
			begin
				image_info = EXIFR::JPEG.new(image)
				photo = user.photos.new(:name => mms.subject,
														 :description => mms.body,
														 :image => File.new(image))
				photo.taken_at = image_info.date_time ? image_info.date_time : Time.now
				photo.camera_model = image_info.model if image_info.model
				photo.latitude = MailProcessor.dms_degrees(image_info.exif.gps_latitude, image_info.exif.gps_latitude_ref) if image_info.exif.gps_latitude
				photo.longitude = MailProcessor.dms_degrees(image_info.exif.gps_longitude, image_info.exif.gps_longitude_ref) if image_info.exif.gps_longitude
				photo.save
			rescue => e
				puts e
			end
		end
		mms.purge
	end
	
	def self.test
		mail = TMail::Mail.load('~/Desktop/test2.mail')
		from = mail.from_addrs.first.address
		puts "Receiving a message with the subject '#{mail.subject}' from '#{from}'"
		
		user = User.find_by_full_email(from)
		user = User.create(:full_email => mail.from_addrs.first.address,
											 :email_name => MailProcessor.email_name(from)) unless user
		
		mms = MMS2R::Media.new(mail)
		images = []
		images += mms.media['image/jpeg'] unless mms.media['image/jpeg'].nil?
		images += mms.media['image/jpg'] unless mms.media['image/jpg'].nil?
		
		images.each do |image|
			begin
				image_info = EXIFR::JPEG.new(image)
				photo = user.photos.new(:name => mms.subject,
														 :description => mms.body,
														 :image => File.new(image))
				photo.taken_at = image_info.date_time ? image_info.date_time : Time.now
				photo.camera_model = image_info.model if image_info.model
				photo.latitude = MailProcessor.dms_degrees(image_info.exif.gps_latitude, image_info.exif.gps_latitude_ref) if image_info.exif.gps_latitude
				photo.longitude = MailProcessor.dms_degrees(image_info.exif.gps_longitude, image_info.exif.gps_longitude_ref) if image_info.exif.gps_longitude
				photo.save
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
end
