# require "http"
require "tty-table"

system "clear"
table = TTY::Table.new(["header1", "header2"], [["a1", "a2"], ["b1", "b2"]])

puts table.render(:ascii)

# puts "Welcome to my store!"
# print "Enter a product number [1] - [3]"

# response = HTTP.get("http://localhost/one_product/1")
# products = response.parse
