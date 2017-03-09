class Account
  attr_reader :balance
  
  def initialize
    @balance = 0
  end
  
  def deposit(ammount)
    @balance += 100
  end
end