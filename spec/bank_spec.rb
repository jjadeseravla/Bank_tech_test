require 'bank'

describe Bank do
  subject(:bank) { described_class.new }
  subject(:log) { described_class.new }

  describe '#balance' do
    it 'has a default balance of 0' do
      expect(bank.balance).to eq(0)
    end
  end

  describe '#money_deposited' do
    it 'can have money deposited into bank account' do
      expect(bank.money_deposited(100)).to eq([{:date=>Time.now.strftime('%d/%m/%Y'),
                                                :money_deposited=>100,
                                                :money_withdrawn=>nil,
                                                :balance=>100}])
    end
  end

  describe '#money_withdrawn' do
    it 'can have money taken out of the bank account'do
      bank2 = Bank.new
      bank.money_deposited(100)
      expect(bank.money_withdrawn(50)).to eq([{:date=>Time.now.strftime('%d/%m/%Y'),
                                                :money_deposited=>100,
                                                :money_withdrawn=>nil,
                                                :balance=>100},
                                              {:date=>Time.now.strftime('%d/%m/%Y'),
                                                :money_deposited=>nil,
                                                :money_withdrawn=>50,
                                                :balance=>50}])
    end

    it 'should not allow you to withdraw more money than you have in the bank' do
      bank1 = Bank.new
      expect { bank1.money_withdrawn(10) }.to raise_error 'you do not have sufficient funds'
    end
  end
end
