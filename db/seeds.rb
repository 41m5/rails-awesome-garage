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
Review.delete_all
Car.delete_all
Favourite.delete_all
Owner.delete_all
puts "Complete."

# Create Owners
owner1 = Owner.create(nickname: "Bruce Wayne")
owner2 = Owner.create(nickname: "Danny Zuko")
owner3 = Owner.create(nickname: "Dom Toretto")

# Create Cars
car1 = owner1.cars.create(brand: "Batmobile", model: "Lincoln Futura", year: 1966, fuel: "Atomic batteries", image_url: "https://i.ibb.co/zR45h5J/batmobile.png")
car2 = owner2.cars.create(brand: "Back to the Future", model: "DeLorean DMC-12s", year: 1981, fuel: "Petrol", image_url: "https://i.ibb.co/1T1TTpp/delorean.png")
car3 = owner3.cars.create(brand: "Fast & the Furious", model: "Dodge Charger R/T", year: 1970, fuel: "Diesel", image_url: "https://i.ibb.co/8YY0dVZ/fastfurious.png")

puts "Seeded #{Owner.count} owners and #{Car.count} cars."
