# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Product.destroy_all
License.destroy_all

puts 'Destroyed all data'

user = User.new(
      firstname: "Scott",
      lastname: "Willett",
      email: "admin@pandeen.com",
      password: "Pas$w0rd",
      password_confirmation: "Pas$w0rd"
  )
user.save!

product = Product.create(name: 'Uptime')

License.create(user_id: user.id, product_id: product.id)

puts 'Data seeded'