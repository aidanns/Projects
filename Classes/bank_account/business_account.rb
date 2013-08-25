require_relative 'account.rb'

# An account that can have an EFTPOS machine linked to it.
# @author Aidan Nagorcka-Smith (aidanns@gmail.com)
class BusinessAccount < Account

    def initialize
        super()
    end

    # Accept an electronic payment.
    # @param value [Float] The value of the payment.
    # @return [Nil]
    def accept_electronic_deposit(value)
        @balance += value;
    end
    
end