require "account"

describe Account do
  let(:transaction)       { double :transaction }
  let(:transaction_class) { double :transaction_class, new: transaction }
  let(:printer)           { double :printer, print_statement: STATEMENT }
  
  subject(:account) { described_class.new(transaction_class, printer) }
  
  STATEMENT =  "date       || credit || debit   || balance\n"\
                   "14/01/2012 ||        || 500.00  || 2500.00\n"\
                   "13/01/2012 || 2000.00||         || 3000.00\n"\
                   "10/01/2012 || 1000.00||         || 1000.00\n"
  
  it "can print a statement" do
    expect(account.print_statement).to eq STATEMENT
  end
  
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
    
    it "stores transactions on deposit" do
      expect(account.transactions).to eq [transaction]
    end
    
    context "50 has been withdrawn" do
      before do
        account.withdraw(50)
      end
      
      it "can withdraw funds" do
        expect(account.balance).to eq 50
      end
      
      it "stores transactions on withdraw" do
        expect(account.transactions).to eq [transaction, transaction]
      end
    end
  end
end