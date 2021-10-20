# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."
los_chorros = { name: 'Restaurant Los Chorros', address: 'Los chorros, Caracas', phone_number: 0212-3254, category: 'french' }
pizzeria = { name: 'Pizzeria altamira', address: 'altamira, Caracas', phone_number: 0212-5241, category: 'italian' }
chinese = { name: 'Chinese restaurant', address: 'chacao, Caracas', phone_number: 0212-5674, category: 'chinese' }
japanese = { name: 'Restaurant Jp', address: 'Plaza Vzla, Caracas', phone_number: 0212-8745, category: 'japanese' }
belgian = { name: 'Belgian Restaurant', address: 'Las mercedes, Caracas', phone_number: 0212-5874, category: 'belgian' }

[los_chorros, pizzeria, chinese, japanese, belgian].each do |attributes|
    restaurant = Restaurant.create!(attributes)
    puts "Created #{restaurant.name}"
end
puts "Finished"
