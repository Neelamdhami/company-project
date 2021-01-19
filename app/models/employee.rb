class Employee < ApplicationRecord
	belongs_to :company, optional: true
	has_one :role
	has_many :employees_projects
	has_many :projects, through: :employees_projects
	validates :employee_name, presence: true
	validates_length_of :employee_name, minimum: 3, maximum: 15, allow_blank: true
	mount_uploader :image, ImageUploader

	def self.search(search)
    if search
      where(["employee_name LIKE ?","%#{search}%"])
    else
      all
    end 

  end
end