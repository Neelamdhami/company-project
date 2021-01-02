class Project < ApplicationRecord
	has_many :employees_projects
	has_many :employees, through: :employees_projectss
	validates_length_of :project_name, minimum: 3, maximum: 15, allow_blank: true
	validates :project_name, presence: true
end
Project.create(project_name: nil).valid? # => false
