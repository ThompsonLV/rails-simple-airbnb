# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
puts '-------------------'
puts 'Destroying all data'
puts '-------------------'
Flat.destroy_all

puts 'Creating data'
puts '-------------------'
15.times do
  Flat.create!(
    name: Faker::Markdown.emphasis,
    address: Faker::Address.full_address,
    description: Faker::Address.country,
    price_per_night: (50..100).to_a.sample,
    number_of_guests: (1..10).to_a.sample
  )
end

puts '---- Finished -----'
puts '-------------------'
