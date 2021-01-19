class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable
  attr_accessor :employee_name, :company_id, :image, :dob, :gender
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :employee

  after_create :create_employee

  def create_employee
  	employee = Employee.new(employee_name: self.employee_name, dob: self.dob, gender: self.gender, company_id: self.company_id, image: self.image)
  	employee.save
  end
end
