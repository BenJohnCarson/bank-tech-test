require 'printer'

describe Printer do
  subject(:printer) { described_class.new }
  
  let(:header_line) { "date       || credit || debit  || balance\n" }
  let(:credit_line) { "10/01/2012 || 1000.00||        || 1000.00\n" }
  let(:debit_line)  { "10/01/2012 ||        || 500.00 ||  500.00\n" }
  
  let(:credit_transaction)  { Transaction.new(1000, 1000, :credit) }
  let(:debit_transaction)   { Transaction.new(500, 500, :debit) }
  
  before do
    Timecop.freeze(Time.local(2012, 01, 10, 0, 0))
  end
  
  it "can print out the headers" do
    expect(printer.print_statement([])).to eq header_line
  end
  
  it "can print out a credit transaction" do
    statement = header_line + credit_line
    expect(printer.print_statement([credit_transaction])).to eq statement
  end
  
  it "can print out a debit transaction" do
    statement = header_line + debit_line
    expect(printer.print_statement([debit_transaction])).to eq statement
  end
end