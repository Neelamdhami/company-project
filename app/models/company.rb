class Company < ApplicationRecord
	has_many :employees
	has_many :projects
	validates_length_of :employees, :maximum => 5
validates :company_name, presence: true
validates_length_of :company_name, minimum: 3, maximum: 15, allow_blank: true

end
Company.create(company_name: nil).valid? # => false