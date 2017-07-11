require_relative 'bank'

class Log
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def transaction(date, money_deposited, money_withdrawn, balance)
    transaction = {date: date,
                  money_deposited: money_deposited,
                  money_withdrawn: money_withdrawn,
                  balance: balance}
    @transactions << transaction
  end
end
