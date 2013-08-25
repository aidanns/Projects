require 'set'

require_relative 'product.rb'

# Represents the inventory of a store.
# @author Aidan Nagorcka-Smith (aidanns@gmail.com)
class Inventory

    def initialize
        # All products in the inventory.
        # @type Hash<FixNum, Product>
        @products = Hash.new
    end

    # Add the product to the inventory. If it already exists, then add quantity
    # to the existing record.
    # @param product [Product] The product to add.
    # @return [Inventory]
    def add_product(product)
        if @products[product.id]
            @products[product.id].quantity += product.quantity
        else
            @products[product.id] = product
        end
        self
    end

    # Calculate the total value of the inventory.
    # @return [Float] Total value of the inventory.
    def calculate_total_price
        total_value = 0.0
        @products.each do |id, product|
            total_value += product.quantity * product.price
        end
        return total_value
    end

end