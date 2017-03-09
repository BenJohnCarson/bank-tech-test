require_relative 'transaction'
require_relative 'printer'

class Account
  attr_reader :balance, :transactions # TODO Remove transactions at some point
  
  def initialize(transaction_class = Transaction, printer = Printer.new)
    @balance = 0
    @transaction_class = transaction_class
    @transactions = [] # This could potentialy be another object (think journey log)
    @printer = printer
  end
  
  def deposit(amount)
    @balance += amount
    add_transaction(amount, :credit)
  end
  
  def withdraw(amount)
    @balance -= amount
    add_transaction(amount, :debit)
  end
  
  def print_statement
    printer.print_statement(transactions)
  end
  
  private
  
  attr_reader :printer, :transaction_class
  
  def add_transaction(amount, type)
    @transactions << transaction_class.new(amount, @balance, type)
  end
end