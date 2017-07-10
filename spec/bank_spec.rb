require 'bank'

describe Bank do
  subject(:bank) { described_class.new }

  it 'has a default balance of 0' do
    expect(bank.balance).to eq(0)
  end

  it 'can have money deposited in it' do
    expect(bank.money_deposited(100)).to eq(100)
  end
end
