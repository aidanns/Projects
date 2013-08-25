# Class description.
# @author Aidan Nagorcka-Smith (aidanns@gmail.com)
class Account

    # @return [Float] The current balance of the account.
    attr_accessor :balance

    def initialize
        @balance = 0;
    end

    # Withdraw some money from the account.
    # @param balance [Float] balances of money to withdraw.
    # @return [Nil]
    def withdraw(balance)
        @balance -= balance
    end

    # Deposit some money in to the bank account
    # @param balance [Float] The balance of money to desposit.
    # @return [Nil]
    def deposit(balance)
        @balance += balance
    end

    # Desposit a cheque in to a bank account.
    # @param cheque [Cheque] The cheque to deposit.
    # @return [Nil] 
    def deposit_cheque(cheque)
        @balance += cheque.value
    end

end