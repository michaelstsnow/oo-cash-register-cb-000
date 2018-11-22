class CashRegister
  attr_accessor(:discount,:total)
  def initialize(discount = 0)
    @discount=discount
    @total=0
  end

  def add_item(item_info)
    intem_info_seperated=item_info.split(",")
  end
end
