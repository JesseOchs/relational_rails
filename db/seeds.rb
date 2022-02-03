# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rockies = MountainRange.create!(name:"Rocky Mountains", peak_count: 77, northern_hemisphere: true)
himalayas = MountainRange.create!(name: "Himalayas", peak_count: 110, northern_hemisphere: true)
andes = MountainRange.create!(name: "Andes", peak_count: 100, northern_hemisphere: false)