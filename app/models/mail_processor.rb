class MailProcessor < ActionMailer::Base
 	require 'tmail'
	require 'mms2r'

	def receive(mail)
		puts "Receiving a message with the subject '#{mail.subject}'"
		
		mms = MMS2R::Media.new(mail)
		images = []
		images += mms.media['image/jpeg'] unless mms.media['image/jpeg'].nil?
		images += mms.media['image/jpg'] unless mms.media['image/jpg'].nil?
		images.each do |image|
			begin
				photo = Photo.create(:name => mms.subject, :description => mms.body, :image => image)
				puts 'photo created'
			rescue => e
				puts e
			end
		end
		mms.purge
		return nil
	end
	
	def self.test
		mail = TMail::Mail.load('~/Desktop/test.mail')
		puts "Receiving a message with the subject '#{mail.subject}'"
		
		#photo = Photo.new
		mms = MMS2R::Media.new(mail)
		images = []
		images += mms.media['image/jpeg'] unless mms.media['image/jpeg'].nil?
		images += mms.media['image/jpg'] unless mms.media['image/jpg'].nil?
		images.each do |image|
			begin
				photo = Photo.create(:name => mms.subject, :description => mms.body, :image => image)
				puts 'photo created'
			rescue => e
				puts e
			end
		end
		mms.purge
		return nil
	end
	
end
