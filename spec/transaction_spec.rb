describe Transaction do
  subject(:transaction) { described_class.new }
  
  before do
    Timecop.freeze(Time.local(2012, 01, 10, 0, 0))
  end
  
  it "holds a date" do
    date = "10/01/2012"
    expect(transaction.date).to eq date
  end
end