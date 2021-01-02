class Role < ApplicationRecord
	belongs_to :employee
	validates_uniqueness_of :role_name, message: "is already taken"
	validates_presence_of :role_name
	validates_length_of :role_name, minimum: 3, maximum: 15, allow_blank: true
end
