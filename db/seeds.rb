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

mount_evans = rockies.mountains.create!(name: 'Mount Evans', height: 14265, fourteener: true)
pikes_peak = rockies.mountains.create!(name: 'Pikes Peak', height: 14115, fourteener: true)
ypsilon = rockies.mountains.create!(name: 'Ypsilon', height: 13520, fourteener: false)

aconcagua = andes.mountains.create!(name: 'Aconcagua', height: 22837, fourteener: true)
tronador = andes.mountains.create!(name: 'Tronador', height: 11453, fourteener: false)
nevado_sajama = andes.mountains.create!(name: 'Nevado Sajama', height: 21463, fourteener: true)

k2 = himalayas.mountains.create!(name: 'K2', height: 28251, fourteener: true)
lhotse = himalayas.mountains.create!(name: 'Lhotse', height: 27940, fourteener: true)
bandarpunch = himalayas.mountains.create!(name: 'Bandarpunch', height: 21313, fourteener: true)


