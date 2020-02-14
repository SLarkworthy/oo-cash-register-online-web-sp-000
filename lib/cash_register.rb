class CashRegister
  attr_accessor :total, :discount, :item
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += quantity * price
    @item << title
  end
  
  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total = @total - (@total * discount * 0.01)
      "After the discount, the total comes to $#{@total.truncate()}."
    end
  end
  
  def items
    @item
  end
  
  
  
end
