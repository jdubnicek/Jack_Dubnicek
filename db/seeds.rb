# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts "Creating Dishes"
# Dish.delete_all
# Dish.create! id: 1, name: "Banana", price: 0.49
# Dish.create! id: 2, name: "Apple", price: 0.29
# Dish.create! id: 3, name: "Carton of Strawberries", price: 1.99
#
# puts "Creating Order Statuses"
# OrderStatus.delete_all
# OrderStatus.create! id: 1, name: "In Progress"
# OrderStatus.create! id: 2, name: "Placed"
# OrderStatus.create! id: 3, name: "Cancelled"

# puts "Creating Users"
# users = [["Jack Dubnicek", "jdubnicek@gmail.com"],
#               ["Noel Rappin", "noel@tablexi.com"],
#               ["Table XI User", "contact@tablexi.com"]]
#
# users.each do |user|
#   User.create!({name: admin[0],
#                 email: admin[1]})
#   puts "User #{user[0]} #{user[1]} has been created"
# end


puts "Creating Categories"
categories = [appetizer, main_course, side_dish, dessert]

categories.each do |category|
  Category.create!({name: category})
  puts "Category #{category} has been created"
end


puts "Creating Dishes"
menu_items = [
  appetizer =   [["Bruschetta", "Toasted French Bread topped with tomatoes and basil", "3.99" ],
                  ["Caesar Salad", "Romaine lettuce, parmesan cheese, croutons, Caesar dressing", "3.99"],
                  ["Soup du Jour", "A cup of our soup of the day", price: "1.99"],
                  ["Shrimp Cocktail", "Delicious fresh shrimp with a horseradish cocktail sauce", "4.99"]],

  main_course = [["Rotisserie Chicken", "Juicy rotisserie roasted half chicken", "9.99", ],
                  ["NY Strip", "Seared NY Strip Steak", "16.99"],
                  ["Chicken Fettucine Alfredo", "Grilled chicken in an alfredo sauce over fettucine noodles", "12.99"],
                  ["Seafood Gumbo", "Shrimp, oysters, and crabmeat in a spicy vegetable broth", "19.99"]],

  side_dish =  [["Spicy Sweet Corn", "Roasted sweet corn with diced sweet peppers", "1.49"],
                  ["Roasted Brussels Sprouts", "Roasted brussels sprouts with crispy pancetta", "1.49"],
                  ["Garlic Mashed Potatoes", "Thick garlic mashed potatoes topped with chives", "1.49"],
                  ["Glazed Baby Carrots", "Baby carrots glazed in honey with ginger", "1.49"]],

  dessert =     [["Fruit Parfait", "Layers of fresh fruit, yogurt, and granola", "4.99"],
                  ["Flan", "Delicious custard topped with a sugary crispy shell", "4.99"],
                  ["Salted Caramel Cake", "Sweet and salty layered caramel cake", "4.99"],
                  ["Gelato", "Assorted flavors", "1.99"]]
]
dishes.each do |dish|
  dish.each do |properties|
    Dish.create!({name: properties[0],
                      description: properties[1],
                      category: properties,
                      price: [2]})
    puts "Dish #{item} has been created"
  end
end

puts "Creating Shopping Carts"
