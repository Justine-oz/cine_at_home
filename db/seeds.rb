# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Destroy Users"
User.destroy_all



puts "Create User"

user1 = User.new(first_name: "Bobi",
                 last_name: "Joe",
                 email: "test@test.fr",
                 password: "123456",
                 phone_number: "0612121212",
                 description: "Olilol le test"
                )
user1.save

puts "Destroy screenings"

Screening.destroy_all


puts "Create screanings"

20.times do
user1 = User.last
  screening = Screening.new(
    film: Faker::Movie.title,
    description: Faker::Movie.quote,
    location: Faker::Address.city,
    number_of_guests: rand(0..15),
    price: rand(5..20),
    datetime: Faker::Date.between(from: '2020-09-23', to: '2021-09-25')
    )
    screening.user = user1
    screening.save
end


puts "Done"
