require 'date'

class Transaction
  
  attr_reader :date
  
  def initialize
    @date = Date.today.strftime("%d/%m/%Y")
  end
end