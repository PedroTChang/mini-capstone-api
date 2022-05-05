# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.create(name: "Tesla Model S", price: 80000, image_url: "https://www.tesla.com/sites/default/files/images/blogs/p100d_social.jpg", description: "A fast car")
Product.create(name: "RTX 3080 Ti", price: 1299, image_url: "https://m.media-amazon.com/images/I/81TzR9+1IXL._AC_SL1500_.jpg", description: "GPU")
Product.create(name: "UPLIFT V2 Desk", price: 1000, image_url: "https://cdn.thewirecutter.com/wp-content/media/2021/03/standingdesk-2048px-5212-2x1-1.jpg?auto=webp&quality=75&crop=2:1&width=1024", description: "A desk that lifts up")
Product.create(name: "MacBook Pro 16in", price: 3500, image_url: "https://m.media-amazon.com/images/I/71FB1Or+44L.jpg", description: "Laptop")
