# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
require 'faker';
puts 'Creating Companies'

10.times do |com|
	@company = Company.create(company_name: Faker::Company.name)
end

20.times do |emp|
	@employee = Employee.create(employee_name: "#{Faker::Name.name}", company_id: @company.id)
end

20.times do |emp|
	@project = Project.create(project_name: "#{Faker::Game.title}")
end