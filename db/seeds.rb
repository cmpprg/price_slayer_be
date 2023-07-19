# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
v1 = Vendor.create(name: "Jurassic Jungles")
v2 = Vendor.create(name: "T-Rexcellent Terrain")
v3 = Vendor.create(name: "Tricera-Trees")
p1 = Plant.create(name: "Rose")
p2 = Plant.create(name: "Oak tree")
p3 = Plant.create(name: "Sunflower")
p4 = Plant.create(name: "Pine tree")
p5 = Plant.create(name: "Tulip")
p6 = Plant.create(name: "Maple tree")
p7 = Plant.create(name: "Orchid")
p8 = Plant.create(name: "Birch tree")
p9 = Plant.create(name: "Lavender")
p10 = Plant.create(name: "Palm tree")

plants = [p1, p2, p3, p4, p5, p6, p7, p8, p9, p10]

plants.each do |plant|
  PlantVendor.create(plant: plant, vendor: v1, price: Faker::Number.decimal(
    l_digits: Faker::Number.between(from: 1, to: 10),
    r_digits: 2
  ))

  PlantVendor.create(plant: plant, vendor: v2, price: Faker::Number.decimal(
    l_digits: Faker::Number.between(from: 1, to: 10),
    r_digits: 2
  ))

  PlantVendor.create(plant: plant, vendor: v3, price: Faker::Number.decimal(
    l_digits: Faker::Number.between(from: 1, to: 10),
    r_digits: 2
  ))
end
