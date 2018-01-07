# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
AdminUser.create!(email: 'admin1@example.com', password: 'password1', password_confirmation: 'password1')

brand_guide = Product.create(title: "Brand Guide", 
	subtitle: "Level 2", description: %{<p>343433434fdf</p>}
	price: "9.99", sku: "Brand1")