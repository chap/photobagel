class MailProcessor < ActionMailer::Base
 # require 'mms2r'

	def receive(mail)
		puts "Receiving a message with the subject '#{mail.subject}'"
		
		begin
			mms = MMS2R::Media.create(mail) 
			mms.process do |media_type, files|
				puts media_type
				files.each do |file|
			    #if media_type =~ /photo/
						Photo.create(:uploaded_data => file, :name => mail.subject)
					#end
				end
			end
		ensure
			mms.purge
		end
	end
	
end
