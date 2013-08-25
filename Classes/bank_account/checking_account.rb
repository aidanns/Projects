require_relative 'account.rb'
require_relative 'cheque.rb'


# Bank account that we can write checks from.
# @author Aidan Nagorcka-Smith (aidanns@gmail.com)
class CheckingAccount < Account

    def initialize
        super()
    end

    # Creates a cheque for a certain value by withdrawing that money from this
    # account.
    # @param value [Float] Value of the cheque to create.
    # @return [Cheque, Nil] The cheque that was created or nil if there wasn't
    #     enoguh balance on the account.
    def write_cheque(value)
        if @balance >= value
            cheque = Cheque.new(value)
            @balance -= value
            return cheque
        else
            return nil
        end
    end
    
end