require_relative 'transaction'

class Account
  attr_reader :balance, :transactions # TODO Remove transactions at some point
  
  def initialize(transaction_class = Transaction)
    @balance = 0
    @transaction_class = transaction_class
    @transactions = [] # This could potentialy be another object (think journey log)
  end
  
  def deposit(amount)
    @balance += amount
    add_transaction(amount, :credit)
  end
  
  def withdraw(amount)
    @balance -= amount
    add_transaction(amount, :debit)
  end
  
  private
  
  def add_transaction(amount, type)
    @transactions << @transaction_class.new(amount, @balance, type)
  end
end