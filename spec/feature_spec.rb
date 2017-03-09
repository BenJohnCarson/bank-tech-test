describe "feature test" do
  describe "1st user story" do
    # As a customer
    # So I can see whats in my account
    # I'd like to access my balance
    it "has a balance" do
      account = Account.new
      expect(account.balance).to eq 0
    end
  end
end