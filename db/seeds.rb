# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom',
            address: '7 Boundary St, London E2 7JE',
            phone_number: '00 00 00 00 00',
            category: 'chinese',
            rating: 5 }
pizza_east = { name: 'Pizza East',
               address: '56A Shoreditch High St, London E1 6PQ',
               phone_number: '00 00 00 00 00',
               category: 'italian',
               rating: 4 }
tour_d_argent = { name: 'La tour d argent',
                  address: ' 11 rue de la Seine Paris',
                  phone_number: '00 00 00 00 00',
                  category: 'french',
                  rating: 5 }
sushi_shop = { name: 'Sushi shop',
               address: ' 9 rue de Rennes Paris',
               phone_number: '00 00 00 00 00',
               category: 'japanese',
               rating: 3 }

[dishoom, pizza_east, tour_d_argent, sushi_shop].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
