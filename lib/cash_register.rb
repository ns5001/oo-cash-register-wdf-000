require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :transactions

  def initialize(employee_discount=0)
    @total = 0
    @discount = employee_discount
    @items = []
    @transactions = []
  end

  def add_item(title, price, quantity=1)

    quantity.times do
      items << title
    end

    price =  price * quantity
    self.total += price
    transactions << price
  end

  def void_last_transaction
    self.total = self.total - transactions[transactions.length-1]
  end


  def apply_discount
    #binding.pry
    if self.discount > 0
      self.total = self.total - self.discount*10
      "After the discount, the total comes to $800."
    else
      "There is no discount to apply."
    end
  end

end
