class Company < ApplicationRecord
	has_many :employees
	has_many :projects
	validates_length_of :employees, :maximum => 50
	validates :company_name, presence: true
	validates_length_of :company_name, minimum: 3
	mount_uploader :image, ImageUploader

	def self.search(search)
    if search
      where(["company_name LIKE ?","%#{search}%"])
    else
      all
    end 

  end
end 