# Represent a product that can be in the inventory.
# @author Aidan Nagorcka-Smith (aidanns@gmail.com)
class Product

    # Unique identifier.
    # @return [FixNum]
    attr_accessor :id

    # Human readable name.
    # @return [String]
    attr_accessor :name

    # Price, in Australian dollars.
    # @return [Float]
    attr_accessor :price

    # Quantity in stock.
    # @return [FixNum]
    attr_accessor :quantity

    # @param id [FixNum] 
    # @param name [String]
    # @param price [Float]
    # @param quantity [FixNum] 
    def initialize(id, name, price, quantity)
        @id = id
        @name = name
        @price = price
        @quantity = quantity
    end

    # Return a hash for this product. Uses the hash for the products id.
    def hash
        @id.hash
    end

    # Return true if this product has the same id as another.
    # @return [Boolean] True if the other product has the same id as this one.
    def eql?(other)
        @id.eql? other.id
    end

    # Return the total price of all items in stock
    # @return [Float] The value of all items in stock.
    def calculate_total_value
        return @quantity * @price
    end

end