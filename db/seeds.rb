# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: "T-Shirts")
Category.create(name: "Hoodies")
Category.create(name: "Stickers")
Product.create(name: "Black Launch Shirt", category_id: "1", price: "10.00")
Product.create(name: "White Launch Shirt", category_id: "1", price: "11.00")
