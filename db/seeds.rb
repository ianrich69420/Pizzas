# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "🌱 Seeding pizzas..."

ActiveRecord::Base.transaction do
  10.times do
    pizza = Pizza.create!(
        name: Faker::Food.ethnic_category,
        ingredients: Faker::Food.vegetables
    )

    restaurant = Restaurant.create!(
        name: Faker::Restaurant.name,
        address: Faker::Address.full_address
    )

    RestaurantPizza.create!(
        price: rand(1..30),
        pizza_id: pizza.id,
        restaurant_id: restaurant.id
    )
  end
end

puts "✅ Done seeding!"
