class Blog < ApplicationRecord
	mount_uploader :image, ImageUploader
	has_many :comments, as: :commentable

	def self.search(search)
    if search
      where(["title LIKE ?","%#{search}%"])
    else
      all
    end 

  end
end
