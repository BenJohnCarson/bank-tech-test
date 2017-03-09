describe Account do
  subject(:account) { described_class.new }
  
  it "has a balance" do
    expect(account.balance).to eq 0
  end
end