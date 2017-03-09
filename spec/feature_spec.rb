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
  
  describe "4th user story" do
    # As a customer
    # So I know when my account has been accessed
    # I'd like to see a date with my transactions
    it "stores a date with each transaction" do
      account.deposit(100)
      transaction = account.transactions.pop
      expect(transaction.date).to be_truthy # TODO Change this to a date, research time stubbing in tests
    end
  end
  
  describe "5th user story" do
    # As a customer
    # So I can see a history of my transactions
    # I'd like to be able to print out a statement
    it "prints out a statement showing transaction history" do
      statement =  "date       || credit || debit   || balance\n"\
                   "14/01/2012 ||        || 500.00  || 2500.00\n"\
                   "13/01/2012 || 2000.00||         || 3000.00\n"\
                   "10/01/2012 || 1000.00||         || 1000.00\n"
      account.deposit(1000)
      account.deposit(2000)
      account.withdraw(500)
      expect(account.print_statement).to eq statement
    end
  end
end