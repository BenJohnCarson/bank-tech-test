require_relative 'transaction'

class Account
  attr_reader :balance, :transactions # TODO Remove transactions at some point
  
  def initialize(transaction = Transaction)
    @balance = 0
    @transaction = transaction
    @transactions = [] # This could potentialy be another object (think journey log)
  end
  
  def deposit(amount)
    @balance += amount
    add_transaction
  end
  
  def withdraw(amount)
    @balance -= amount
    add_transaction
  end
  
  private
  
  def add_transaction
    @transactions << @transaction.new
  end
end