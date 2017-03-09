describe Account do
  subject(:account) { described_class.new }
  
  it "has a balance" do
    expect(account.balance).to eq 0
  end
  
  it "can deposit funds" do
    account.deposit(100)
    expect(account.balance).to eq 100
  end
end