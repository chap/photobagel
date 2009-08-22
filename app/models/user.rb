class User < ActiveRecord::Base
	has_many :photos
	has_permalink :email_name
	
	def	to_param
		permalink
	end
end
