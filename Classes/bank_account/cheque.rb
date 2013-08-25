# A representation of a cheque.
# @author Aidan Nagorcka-Smith (aidanns@gmail.com)
class Cheque

    # @return [Float] The value of the cheque.
    attr_accessor :value

    def initialize(value)
        @value = value
    end
    
end