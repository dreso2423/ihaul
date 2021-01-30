# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating seeds"


require 'faker'

puts 'Creating 100 fake restaurants...'
20.times do
  truck = Truck.new(
    name:    Faker::Vehicle.model,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    color: Faker::Color
    description: Faker::Vehicle.car_type,
    image:
    model:Faker::Vehicle.make_and_model,
    make: Faker::Vehicle.make,


  )
  truck.save!
end
puts 'Finished!'


#arreglo de imagenes y cuando lo haga en el loop que lo haga en random

 create_table "trucks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "size"
    t.integer "price"
    t.string "make"
    t.string "model"
    t.string "color"
    t.bigint "owner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.index ["owner_id"], name: "index_trucks_on_owner_id"
  end

Faker::Vehicle.vin #=> "LLDWXZLG77VK2LUUF"

# Random vehicle manufacturer
Faker::Vehicle.manufacture #=> "Lamborghini"

Faker::Vehicle.make #=> "Honda"

# Random vehicle model
# Keyword arguments: make_of_model
Faker::Vehicle.model #=> "A8"
Faker::Vehicle.model(make_of_model: 'Toyota') #=> "Prius"

# Random vehicle make and model
Faker::Vehicle.make_and_model #=> "Dodge Charger"

# Random vehicle color
Faker::Vehicle.color #=> "Red"

# Random vehicle transmission
Faker::Vehicle.transmission #=> "Automanual"

# Random vehicle drive type
Faker::Vehicle.drive_type #=> "4x2/2-wheel drive"

# Random vehicle fuel type
Faker::Vehicle.fuel_type #=> "Diesel"

# Random vehicle style
Faker::Vehicle.style #=> "ESi"

# Random car type
Faker::Vehicle.car_type #=> "Sedan"
