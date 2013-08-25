require_relative 'checking_account.rb'
require_relative 'savings_account.rb'
require_relative 'business_account.rb'
require_relative 'eftpos_machine.rb'
require_relative 'cheque.rb'

puts "Creating a new checking account."
cheque_account = CheckingAccount.new
puts "Depositing $100.00"
cheque_account.deposit(100.00)
print "Current balance of the account is: " + cheque_account.balance.to_s + ".\n"
puts "Writing a cheque for $60.00"
cheque = cheque_account.write_cheque(60.00)
print "Value of the cheque is: " + cheque.value.to_s + ".\n"
print "Balance of the checking account is: " + cheque_account.balance.to_s + ".\n"

puts "Creating a savings account with a 4% interest rate."
savings_account = SavingsAccount.new(0.04)
puts "Despositing the cheque."
savings_account.deposit_cheque(cheque)
print "Balance of the account: " + savings_account.balance.to_s + ".\n"
puts "A year is passing and we're gaining interest..."
savings_account.give_interest()
print "Balance of the account: " + savings_account.balance.to_s + ".\n"

puts "Creating a business bank account with a linked EFTPOS machine."
business_account = BusinessAccount.new()
eftpos_machine = EFTPOSMachine.new()
eftpos_machine.link_to_bank_account(business_account)
puts "Making an eftpos payment of $30"
eftpos_machine.accept_payment_from_card(30.00)
print "Balance of the account is: " + business_account.balance.to_s + ".\n"