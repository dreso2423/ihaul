# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating seeds"


require 'faker'

url1 ="https://images.pexels.com/photos/193667/pexels-photo-193667.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
url2="https://media.istockphoto.com/photos/white-compact-popular-cargo-mini-van-for-local-deliveries-and-on-picture-id1160472596?s=612x612"
url3="https://www.istockphoto.com/es/foto/cami%C3%B3n-aislado-amarillo-gm174893871-2275372"
url4="https://media.istockphoto.com/photos/cargo-truck-picture-id1248250290?k=6&m=1248250290&s=612x612&w=0&h=ztakLRZ6RV531qIe-t0LUeFbhO8O0JEUe8psWi99hWc="
url5="https://media.istockphoto.com/photos/trucking-picture-id174800807?k=6&m=174800807&s=612x612&w=0&h=caMqv-Vo9Ye_RZJnbdw7zWYHQHLN6ZW25jkLVXSa5DA="
url6="https://media.istockphoto.com/photos/peugeot-boxer-picture-id521807856?k=6&m=521807856&s=612x612&w=0&h=Xz7ufogzEj2K2v8ydADzhMnQSvoyxWzHryWWh5R0XDk="
url7="https://media.istockphoto.com/photos/speeding-truck-picture-id482531925?k=6&m=482531925&s=612x612&w=0&h=fBSyVydgHSU3QzkzTq2f8zBy1ln1syFK4ZbiWfvjxgA="
url8= "https://media.istockphoto.com/photos/lorry-on-the-motorway-at-night-picture-id1006830238?k=6&m=1006830238&s=612x612&w=0&h=V2EKQtmXXGKwqUBRAEP2Op1TIvg-0nyvDN3NoD4b0_o="
url9="https://media.istockphoto.com/photos/road-transport-lorry-with-blue-trailer-in-motion-on-the-road-picture-id1071206236?k=6&m=1071206236&s=612x612&w=0&h=n3aUd4RIeiyWgJ6Y49skc3nSHQ1QqqHSJ6Cp6J-l12s="
url10="https://media.istockphoto.com/photos/delivery-van-picture-id186391557?k=6&m=186391557&s=612x612&w=0&h=_n_8wAh15YSJL3Aggdzr3zfwzq3O4WrlyMyMnvhOvDE="
atruck= [url1, url2, url3, url4, url5, url6, url7, url8, url9,url10]

addresses = ["Av. Juárez, Centro Histórico, Mexico City ","Av. Javier Barros Sierra 540, Santa Fe, Mexico City","Eje Central Lázaro Cárdenas 42, Centro, Mexico City","Orizaba 76, Roma Norte, Mexico City","Paseo de la Reforma 500,Mexico City","JOEL MONTES CAMARENA NO. 15, PLAYAS, 82040, Mexico City"]
urls = ["Av. Juárez, Centro Histórico, Mexico City"]

puts 'Creating 100 fake restaurants...'
10.times do
  truck = Truck.new(
    name:    Faker::Vehicle.model,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city} ",
    color: Faker::Color
    description: Faker::Vehicle.car_type,
    image: atruck.sample
    model:Faker::Vehicle.model
    make: Faker::Vehicle.make,
    size: Faker::Vehicle.engine_size,
    price: rand(500...10000)
  )
  truck.save!
end
puts 'Finished!'


# #arreglo de imagenes y cuando lo haga en el loop que lo haga en random

#  create_table "trucks", force: :cascade do |t|
#
#
#
#
#
#     t.bigint "owner_id"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.float "latitude"
#     t.float "longitude"
#     t.string "address"
#     t.index ["owner_id"], name: "index_trucks_on_owner_id"
#   end

# Faker::Vehicle.vin #=> "LLDWXZLG77VK2LUUF"

# # Random vehicle manufacturer
# Faker::Vehicle.manufacture #=> "Lamborghini"

# Faker::Vehicle.make #=> "Honda"

# # Random vehicle model
# # Keyword arguments: make_of_model
# Faker::Vehicle.model #=> "A8"
# Faker::Vehicle.model(make_of_model: 'Toyota') #=> "Prius"

# # Random vehicle make and model
# Faker::Vehicle.make_and_model #=> "Dodge Charger"

# # Random vehicle color
# Faker::Vehicle.color #=> "Red"

# # Random vehicle transmission
# Faker::Vehicle.transmission #=> "Automanual"

# # Random vehicle drive type
# Faker::Vehicle.drive_type #=> "4x2/2-wheel drive"

# # Random vehicle fuel type
# Faker::Vehicle.fuel_type #=> "Diesel"

# # Random vehicle style
# Faker::Vehicle.style #=> "ESi"

# # Random car type
# Faker::Vehicle.car_type #=> "Sedan"
