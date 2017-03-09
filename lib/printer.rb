class Printer

  def print_statement(transactions)
    if transactions != []
      build_string(transactions)
    else
      HEADER_LINE
    end
  end
  
  private
  
  HEADER_LINE = "date       || credit || debit  || balance\n"
  COLUMN_WIDTH = 7
  EMPTY_COLUMN = "||        "
  
  def build_string(transactions)
    statement = HEADER_LINE
    transactions.each do |transaction|
      line = ""
      line << build_date(transaction.date)
      line << build_type(transaction.type, transaction.amount)
      line << build_balance(transaction.balance_snapshot)
      statement << line + "\n"
    end
    statement
  end
  
  def build_date(date)
    date + " "
  end
  
  def build_type(type, amount)
    if type == :credit
      credit_column(amount) + debit_column()
    else
      credit_column() + debit_column(amount)
    end
  end
  
  def build_balance(balance)
    balance_s = amount_to_s(balance)
    "|| #{column_pad(balance_s.length)}#{balance_s}"
  end
  
  def amount_to_s(amount)
    sprintf( "%0.02f", amount)
  end
  
  def credit_column(amount = false)
    if amount
      amount_s = amount_to_s(amount)
      "|| #{amount_s}" + "#{column_pad(amount_s.length)}"
    else
      EMPTY_COLUMN
    end
  end
  
  def debit_column(amount = false)
    if amount
      amount_s = amount_to_s(amount)
      "|| #{amount_s}" + "#{column_pad(amount_s.length)}"
    else
      EMPTY_COLUMN
    end
  end
  
  def column_pad(length)
    " " * (COLUMN_WIDTH - length)
  end
end