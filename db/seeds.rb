# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Owner.delete_all
Car.delete_all
puts "Complete."

# Create Owners
owner1 = Owner.create(nickname: "Bruce Wayne")
owner2 = Owner.create(nickname: "Danny Zuko")
owner3 = Owner.create(nickname: "Dom Toretto")

# Create Cars
car1 = owner1.cars.create(brand: "Batmobile", model: "Lincoln Futura", year: 1966, fuel: "Atomic batteries")
car2 = owner2.cars.create(brand: "Greased Lightning", model: "Ford Super De Luxe", year: 1948, fuel: "Petrol")
car3 = owner3.cars.create(brand: "Fast & The Furious", model: "Dodge Charger R/T", year: 1970, fuel: "Diesel")

puts "Seeded #{Owner.count} owners and #{Car.count} cars."
