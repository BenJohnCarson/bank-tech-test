describe Transaction do
  subject(:transaction) { described_class.new(100, 200) }
  
  before do
    Timecop.freeze(Time.local(2012, 01, 10, 0, 0))
  end
  
  it "holds a date" do
    date = "10/01/2012"
    expect(transaction.date).to eq date
  end
  
  it "takes an amount" do
    expect(transaction.amount).to eq 100
  end
  
  it "takes a snapshot of the account balance" do
    expect(transaction.balance_snapshot).to eq 200
  end
end