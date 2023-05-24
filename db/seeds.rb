# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
epicure = { name: 'Epicure', address: 'Paris', category: 'french' }
une_frite = { name: 'Il était une frite', address: 'Belgique', category: 'belgian' }
pekin_nouille = { name: 'Pekin nouille', address: 'Lyon', category: 'chinese' }
spaghetto = { name: 'Spaghetto', address: 'Marseille', category: 'italian' }
chuchis = { name: 'Chuchis', address: 'Lille', category: 'japanese' }

[epicure, une_frite, pekin_nouille, spaghetto, chuchis].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
