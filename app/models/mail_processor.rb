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
				photo = Photo.create(:name => mms.subject,
														 :description => mms.body,
														 :image => File.new(image))
			rescue => e
				puts e
			end
		end
		mms.purge
	end
	
end
