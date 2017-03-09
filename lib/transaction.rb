require 'date'

class Transaction
  
  attr_reader :date, :amount, :balance_snapshot
  
  DATE_FORMAT = "%d/%m/%Y"
  
  def initialize(amount, balance_snapshot)
    @date = date_to_string(Date.today)
    @amount = amount
    @balance_snapshot = balance_snapshot
  end
  
  private
  
  def date_to_string(date)
    date.strftime(DATE_FORMAT)
  end
end