class Project < ApplicationRecord
	has_many :employees_projects
	has_many :employees, through: :employees_projectss
	validates_length_of :project_name, minimum: 3
	validates :project_name, presence: true

	def self.search(search)
    if search
      where(["project_name LIKE ?","%#{search}%"])
    else
      all
    end 

  end 
end
