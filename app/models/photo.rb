class Photo < ActiveRecord::Base
  belongs_to :user

	has_attached_file :image,
                    :styles => {
                      :large => ['550x550>', :jpg]
                    },
                    :storage => :s3, 
                    :s3_credentials => "#{RAILS_ROOT}/config/amazon_s3.yml",
                    :bucket => "photobagel",
										:path => ":class/:id/:basename_:style.:extension"
  
  validates_attachment_size :image, :in => 100..2000.kilobytes

	def to_params
		taken_at
	end
end
