require_relative './log'

class Bank
   attr_reader :balance, :log

   def initialize(balance = 0)
     @balance = balance
     @log = Log.new
   end

   def money_deposited(money)
     change_balance(money)
     @log.transaction(Time.now.strftime('%d/%m/%Y'), money, nil, @balance)
   end

   def money_withdrawn(money)
     raise 'you do not have sufficient funds' if @balance - money <= 0
     change_balance(-money)
     @log.transaction(Time.now.strftime('%d/%m/%Y'), nil, money, @balance)
   end

   def change_balance(money)
     @balance += money
   end
 end
