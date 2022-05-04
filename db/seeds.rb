# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.create(name: "Tesla Model S", price: "$80,000", image_url: "test", description: "A fast car")
Product.create(name: "RTX 3080 Ti", price: "$1,299", image_url: "test", description: "GPU")
Product.create(name: "V2 Standesk", price: "$1,000", image_url: "test", description: "A desk that lifts up")
Product.create(name: "MacBook Pro 16in", price: "$3,500", image_url: "test", description: "Laptop")
