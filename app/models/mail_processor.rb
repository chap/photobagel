class MailProcessor < ActionMailer::Base

	def receive(mail)
		puts "Receiving a message with the subject '#{mail.subject}'"
		
		mms = MMS2R::Media.new(mail)
		images = []
		images += mms.media['image/jpeg'] unless mms.media['image/jpeg'].nil?
		images += mms.media['image/jpg'] unless mms.media['image/jpg'].nil?
		
		images.each do |image|
			begin
				photo = Photo.create(:name => mms.subject,
														 :description => mms.body,
														 :image => File.new(image))
			rescue => e
			end
		end
		mms.purge
	end
	
	def self.test
		#mail = TMail::Mail.load('~/Desktop/test.mail')
		mail = TMail::Mail.load('~/Desktop/test2.mail')
		puts "Receiving a message with the subject '#{mail.subject}'"
		
		#photo = Photo.new
		mms = MMS2R::Media.new(mail)
		images = []
		images += mms.media['image/jpeg'] unless mms.media['image/jpeg'].nil?
		images += mms.media['image/jpg'] unless mms.media['image/jpg'].nil?
		
		images.each do |image|
			begin
				image_info = EXIFR::JPEG.new(image)
				photo = Photo.create(:name => mms.subject,
														 :description => mms.body,
														 :image => File.new(image),
														 :taken_at => image_info.date_time,
														 :camera_model => image_info.model,
														 :latitude => MailProcessor.dms_degrees(image_info.exif.gps_latitude, image_info.exif.gps_latitude_ref),
														 :longitude => MailProcessor.dms_degrees(image_info.exif.gps_longitude, image_info.exif.gps_longitude_ref))
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
end
