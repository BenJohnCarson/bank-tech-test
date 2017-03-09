describe "feature test" do
  subject(:account) { Account.new }
  
  describe "1st user story" do
    # As a customer
    # So I can see whats in my account
    # I'd like to access my balance
    it "has a balance" do
      expect(account.balance).to eq 0
    end
  end
  
  describe "2nd user story" do
    # As a customer
    # So I can increase my balance
    # I'd like to be able to make a deposit
    it "can deposit funds" do
      account.deposit(100)
      expect(account.balance).to eq 100
    end
    
    describe "3rd user story" do
      # As a customer
      # So I can spend and shop
      # I'd like to be able to withdraw my money
      it "can withdraw funds" do
        account.deposit(100)
        account.withdraw(50)
        expect(account.balance).to eq 50
      end
    end
  end
end