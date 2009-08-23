class User < ActiveRecord::Base
	has_many :photos
	has_permalink :email_name
	
	def	to_param
		permalink
	end
	
	def newest_photo
		photos.find(:first, :order => 'taken_at DESC')
	end
	
	def oldest_photo
		photos.find(:first, :order => 'taken_at ASC')
	end
	
	def days
		d = (((newest_photo.taken_at - 2.months).beginning_of_month)..(newest_photo.taken_at)).to_a.map{|x| x}.reverse
	end
	
	def months
		days.group_by { |x| x.to_time.beginning_of_month}
	end
	
	#	#(@user.newest_photo.taken_at.to_time - 2.months).beginning_of_month.to_date
	
	def days_with_photos
		photos.to_a.map{|x| x.taken_at}
	end
	
	def total_days
		oldest_photo.taken_at.end_of_month - newest_photo.taken_at.beginning_of_month
	end
end
