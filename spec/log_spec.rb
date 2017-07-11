require 'log'

describe Log do
    # subject(:log) { described_class.new }

    describe '#transactions' do
      it 'should show you the transactions of your log' do
        log = Log.new
        # log.transaction(Time.now.strftime('%m/%d/%Y'), 20, 0, 20)
        expect(log.transaction(Time.now.strftime('%m/%d/%Y'), 20, 0, 20)).to eq([{:date=>"07/11/2017",
                                                                                  :money_deposited=>20,
                                                                                  :money_withdrawn=>0,
                                                                                  :balance=>20}])
    end
  end
end
