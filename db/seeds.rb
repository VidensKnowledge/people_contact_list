# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times do |i|
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, 
  age: rand(18..80), hair_color: Faker::Color.color_name, eye_color: Faker::Color.color_name, 
  gender: Faker::Gender.binary_type, alive: 'Alive')
end



# t.string :first_name
# t.string :last_name
# t.integer :age
# t.string :hair_color
# t.string :eye_color
# t.string :gender
# t.string :alive