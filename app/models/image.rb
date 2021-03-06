class Image < ActiveRecord::Base
  belongs_to :project

  has_attached_file :image, default_url: "default_image.jpg"
  validates_attachment_content_type :image, content_type: ["image/jpg", "image/jpeg", "image/png"]

end