describe Account do
  subject(:account) { described_class.new }
  
  it "has a balance" do
    expect(account.balance).to eq 0
  end
  
  context "Account has 100 in funds" do
    before do
      account.deposit(100)
    end
    
    it "can deposit funds" do
      expect(account.balance).to eq 100
    end
    
    it "can withdraw funds" do
      account.withdraw(50)
      expect(account.balance).to eq 50
    end
  end
end