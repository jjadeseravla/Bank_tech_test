require 'log'

describe Log do
  subject(:log) { described_class.new }

  describe '#transactions' do
    it 'should show you the transactions of your log' do
      log.transaction(13/12/17, 100, 50, 50)
      Time.now.strftime('%m/%d/%Y')
      expect(log.transaction).to eq({date: 13/12/17, money_deposited: 100, money_withdrawn: 50, balance: 50})
    end
  end
end
