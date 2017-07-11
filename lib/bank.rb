require_relative './log'

class Bank
   attr_reader :balance, :log

   def initialize(balance = 0)
     @balance = balance
     @log = Log.new
    #  (date, money_deposited, money_withdrawn, balance) # instead of []. @log.withdrawal(amount)implement a push method:
    #  class transactions
    # def withdrawal
  # end
  # def deposit
# end
   end

   def money_deposited(money_in)
     @balance += money_in
   end

   def money_withdrawn(money_out)
     raise 'you do not have sufficient funds' if @balance - money_out <= 0
     @balance -= money_out
   end

   private

   def credit_transaction(money_in)
     date = Time.now.strftime('%m/%d/%Y')
     money_deposited = money_in
     money_withdrawn = nil
     balance = @balance
     @log.transaction(date, money_deposited, money_withdrawn, balance)
   end

   def debit_transaction(money_out)
     date = Time.now.strftime('%m/%d/%Y')
     money_deposited = nil
     money_withdrawn = amount
     balance = @balance
     @log.transaction(date, money_deposited, money_withdrawn, balance)
   end

 end
