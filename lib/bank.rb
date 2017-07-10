class Bank
   attr_reader :balance

   def initialize(balance = 0)
     @balance = balance
   end

   def money_deposited(money_in)
     @balance += money_in
   end

   def money_withdrawn(money_out)
     raise 'you do not have sufficient funds' if @balance - money_out <= 0
     @balance -= money_out
   end

 end
