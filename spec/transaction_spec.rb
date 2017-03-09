require "transaction"

describe Transaction do
  subject(:credit_transaction)  { described_class.new(100, 200, :credit) }
  subject(:debit_transaction)   { described_class.new(100, 200, :debit) }
  
  before do
    Timecop.freeze(Time.local(2012, 01, 10, 0, 0))
  end
  
  it "holds a date" do
    date = "10/01/2012"
    expect(credit_transaction.date).to eq date
  end
  
  it "takes an amount" do
    expect(credit_transaction.amount).to eq 100
  end
  
  it "takes a snapshot of the account balance" do
    expect(credit_transaction.balance_snapshot).to eq 200
  end
  
  describe "it knows the type of transaction" do
    it "can be a credit" do
      expect(credit_transaction.type).to eq :credit
    end
    
    it "can be a debit" do
      expect(debit_transaction.type).to eq :debit
    end
  end
end