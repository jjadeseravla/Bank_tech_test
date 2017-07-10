class Bank
   attr_reader :balance

   def initialize(balance = 0)
     @balance = balance
   end

   def money_deposited(money_in)
     @balance += money_in
   end

 end
