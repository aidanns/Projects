require_relative 'inventory.rb'

inventory = Inventory.new

computer_product = Product.new(1, "Computer", 450.00, 5)
laptop_product = Product.new(2, "Laptop", 600.00, 3)
tablet_product = Product.new(3, "Tablet", 800.00, 60)

inventory.add_product(computer_product)
inventory.add_product(laptop_product)
inventory.add_product(tablet_product)

puts "Total value of computers: " + computer_product.calculate_total_value.to_s
puts "Total value of laptops: " + laptop_product.calculate_total_value.to_s
puts "Total value of tablets: " + tablet_product.calculate_total_value.to_s
puts "Total value of all inventory items: " + inventory.calculate_total_price.to_s