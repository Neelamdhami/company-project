class Employee < ApplicationRecord
	belongs_to :company
	has_one :role
	has_many :employees_projects
	has_many :projects, through: :employees_projects
	validates_presence_of :company
	validates :employee_name, presence: true
	validates_length_of :employee_name, minimum: 3, maximum: 15, allow_blank: true

	# has_many :projects
	
end
Employee.create(employee_name: nil).valid? # => false