# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
phone = %w[0670055851 0678589285 0677855285 0678596285 0678555285 0678555745 0678556285 0677955285 0678552285 06785554885 0678555415 0678523285 0674555285 0678557285 0678555105 0679555155 0778596285 0671245285 0678555385 0678555064]
User.destroy_all
City.destroy_all
# Listing.destroy_all
# Reservation.destroy_all

20.times do
  User.create(email: Faker::Internet.email(domain: 'gmail'), phone_number: phone.sample, description: Faker::Lorem.sentence(word_count: 140))
end
puts '20 users créées'

10.times do
  City.create(name: Faker::Address.city, zip_code: Faker::Number.number(digits: 5))
end
puts '10 Cities créées'
