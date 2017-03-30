class Post < ApplicationRecord
  validates_presence_of :user_id, :image
  has_attached_file :image, styles: { :medium => "640px" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  belongs_to :user
end
