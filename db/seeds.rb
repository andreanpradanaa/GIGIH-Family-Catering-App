# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create!(email: 'admin@example.com',
#              password: 'password',
#              password_confirmation: 'password',
#              admin: true)

Category.create!(heading: 'Aneka Minuman', body: "It's so good, dough!", display: true)
Category.create!(heading: 'Aneka Ayam', body: 'We cannoli do so much in each vide', display: true)
Category.create!(heading: 'Lainnya', body: 'Rock rails icecream', display: true)

10.times do |i|
  aneka_minuman = Product.new(
    name: 'Jus Mangga',
    description: 'Lorem ipsum bbq chicken upstate newyork free range dough',
    price: 11.99,
    catering: true,
    category: Category.find(1)
  )
  aneka_ayam = Product.new(
    name: 'Ayam Bakar',
    description: 'Lorem ipsum bbq chicken upstate newyork free range dough',
    price: 7.95,
    catering: true,
    category: Category.find(2)
  )
  lainnya = Product.new(
    name: 'Nasi Uduk',
    description: 'Lorem ipsum bbq chicken upstate newyork free range dough',
    price: 3.00,
    catering: true,
    category: Category.find(3)
  )

  if i == 5
    aneka_minuman.featured = true
    aneka_ayam.featured = true
    lainnya.featured = true
  end
  aneka_minuman.save
  aneka_ayam.save
  lainnya.save
end