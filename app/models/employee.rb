class Employee < ApplicationRecord
	belongs_to :company
	has_one :role
	has_many :employees_projects
	has_many :projects, through: :employees_projects
	# has_many :projects
	
end
