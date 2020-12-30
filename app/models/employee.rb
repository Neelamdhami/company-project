class Employee < ApplicationRecord
	belongs_to :company
	has_one :role
	has_many :project
	
end
