# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
	resto = Restaurant.new(name: Faker::HarryPotter.character, address: Faker::HarryPotter.location, phone_number: "+342#{rand(10000)}", category: ["chinese", "italian", "japanese", "french", "belgian"].sample(1)[0])
	puts "test #{resto.name} / #{resto.address} / #{resto.phone_number} / #{resto.category}"
	if resto.save
		puts ("#{resto.name} has been created and saved")
	else
		puts "error"
	end
end

puts "All 10 restaurants created"
