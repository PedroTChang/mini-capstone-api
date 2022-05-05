require "http"
require "tty-table"

system "clear"
puts "Welcome to my store!"
print "Enter a product number [1] - [3]\n"

products = TTY::Table.new(["Name", "Price", "image_url"], [["a1", "a2", "a3"], ["b1", "b2", "b3"]])

puts products.render(:ascii)

#index
response = HTTP.get("http://localhost:3000/products")
products = response.parse(:json)

#show
puts "Plox, press a number 1-3"
number = gets.chomp
response = HTTP.get("http://localhost:3000/products/#{number}")
show = response.parse(:json)
puts show

#create
# number = gets.chomp
# create = HTTP.patch("http://localhost:3000/products/5")
# create = response.parse(:json)
# puts create

#update
