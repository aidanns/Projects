require_relative 'account.rb'

# A savings account that garners interest.
# @author Aidan Nagorcka-Smith (aidanns@gmail.com)
class SavingsAccount < Account

    # @param interest_rate [Float] The interest rate for this account.
    def initialize(interest_rate)
        super()
        @interest_rate = interest_rate
    end

    # Give the savings account an interest payment.
    def give_interest
        @balance += @balance * @interest_rate
    end
    
end