class Photo < ActiveRecord::Base
  belongs_to :user

	has_attached_file :image,
                    :styles => {
                      :large => ['500x500>', :jpg],
                      :medium => ['112x151>', :jpg],
                      :thumb => ['50x50#', :jpg]
                    },
                    :storage => :s3, 
                    :s3_credentials => "#{RAILS_ROOT}/config/amazon_s3.yml",
                    :bucket => "photobagel"
  
  validates_attachment_presence :image
  validates_attachment_content_type :image,
                                    :content_type => ['image/jpeg', 'image/png', 'image/gif', 'image/jpg'],
                                    :message => "Only png, jpg, and gif images are allowed."
  validates_attachment_size :image, :less_than => 2.megabytes
end
