class CashRegister
  attr_accessor :total, :employee_discount
  
  def initialize(discount = nil)
    @total = 0
    self.discount
  end
  
  def discount
    @discount = discount
  end
  
  
  
end
