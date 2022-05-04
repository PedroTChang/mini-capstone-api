# require "http"
require "tty-table"

system "clear"
table = TTY::Table.new(["Name", "Price", "image_url"], [["a1", "a2"], ["b1", "b2"]])

puts table.render(:ascii)

# puts "Welcome to my store!"
# print "Enter a product number [1] - [3]"

#index
response = HTTP.get("http://localhost/products")
products = response.parse

#show

#create

#update
