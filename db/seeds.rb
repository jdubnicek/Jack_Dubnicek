# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
categories = ["appetizer", "main_course", "side_dish", "dessert"]

categories.each do |category|
  Category.create!({name: category})
  puts "Category #{category} has been created"
end


puts "Creating Dishes"
dishes = {
  appetizer: [
    ["Bruschetta", "Toasted French Bread topped with tomatoes, mozzarella, and basil", "3.99", "bruschetta.jpeg" ],
    ["Caesar Salad", "Romaine lettuce, parmesan cheese, croutons, Caesar dressing", "3.99", "caesar.jpeg"],
    ["Soup du Jour", "A cup of our soup of the day", "1.99", "soup_du_jour.jpeg"],
    ["Shrimp Cocktail", "Delicious fresh shrimp with a horseradish cocktail sauce", "4.99", "shrimp.jpg"]
  ],

  main_course: [
    ["Rotisserie Chicken", "Juicy rotisserie roasted half chicken", "9.99", "rotisserie-chicken.jpg"],
    ["NY Strip", "Seared NY Strip Steak", "16.99", "ny_strip.jpg"],
    ["Chicken Fettucine Alfredo", "Grilled chicken in an alfredo sauce over fettucine noodles", "12.99", "alfredo.jpg"],
    ["Seafood Gumbo", "Shrimp, oysters, and crabmeat in a spicy vegetable broth", "19.99", "gumbo.jpg"]
  ],

  side_dish: [
    ["Spicy Sweet Corn", "Roasted sweet corn with diced sweet peppers", "1.49", "corn.jpg"],
    ["Roasted Brussels Sprouts", "Roasted brussels sprouts with crispy pancetta", "1.49", "sprouts.jpg"],
    ["Garlic Mashed Potatoes", "Thick garlic mashed potatoes topped with chives", "1.49", "mashed.jpg"],
    ["Glazed Baby Carrots", "Baby carrots glazed in honey with ginger", "1.49", "carrots.jpg"]
  ],

  dessert: [
    ["Fruit Parfait", "Layers of fresh fruit, yogurt, and granola", "4.99", "parfait.jpg"],
    ["Flan", "Delicious custard topped with a sugary crispy shell", "4.99", "flan.jpg"],
    ["Salted Caramel Cake", "Sweet and salty layered caramel cake", "4.99", "cake.jpg"],
    ["Gelato", "Assorted flavors", "1.99", "gelato.jpg"]
  ]
}

Dish.destroy_all
dishes.each do |key, values|
  dishes[key].each do |values|
    category = Category.find_by(name: "#{key}")
    Dish.create!({name: values[0],
                      description: values[1],
                      category: category,
                      price: values[2],
                      image: File.open("#{Rails.root}/public/images/dishes/#{values[3]}")})
    puts "Dish #{values[0]} has been created"
  end
end
