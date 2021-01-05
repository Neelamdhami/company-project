class Role < ApplicationRecord
	belongs_to :employee
	validates_uniqueness_of :role_name, uniqueness: { case_sensitive: false }
	validates_presence_of :role_name
	validates_length_of :role_name, minimum: 3
end
