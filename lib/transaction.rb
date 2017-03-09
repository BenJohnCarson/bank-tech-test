require 'date'

class Transaction
  
  attr_reader :date
  
  DATE_FORMAT = "%d/%m/%Y"
  
  def initialize
    @date = date_to_string(Date.today)
  end
  
  private
  
  def date_to_string(date)
    date.strftime(DATE_FORMAT)
  end
end