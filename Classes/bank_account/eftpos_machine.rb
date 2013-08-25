# A representation of an EFTPOS machine that a business uses.
# @author Aidan Nagorcka-Smith (aidanns@gmail.com)
class EFTPOSMachine

    # Links this EFTPOS machine to deposit money in to a particular type of bank account.
    # @param bank_account [BusinessAccount] The business bank account to pay 
    #     the moeny receipted in to.
    # @return [Nil]
    def link_to_bank_account(bank_account)
        @bank_account = bank_account
    end

    # Accept a payment with a card.
    # @param value [FLoat] The value of the payment.
    # @return [Nil]
    def accept_payment_from_card(value)
        if @bank_account then @bank_account.accept_electronic_deposit(value)
        end
    end
    
end