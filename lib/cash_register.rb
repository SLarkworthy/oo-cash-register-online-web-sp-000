class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += quantity * price
  end
  
  def apply_discount
    @total = @total - (@total * discount * 0.01)
    "After the discount, the total comes to $#{@total.truncate()}."
  end
  
  
  
end
