# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = %w(Kasia Maciek Kamil Jan Mati Mirek)
users.each{|name| User.create(name: name)}

orders = %w(Pizza Frytki Pierogi Kotlet)
orders.each{|name| Order.create(name: name)}

User.all.each do |user|
    user.orders.create(name: "Zamowienie #{user.name}")
end