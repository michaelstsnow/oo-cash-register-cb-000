class CashRegister
  attr_accessor(:discount,:total)
  def initialize(discount = 0)
    @discount=discount
    @total=0
  end

  def add_item(item_info)
    intem_info_seperated=item_info.split(",")
    if intem_info_seperated.size== 3
      added_value=intem_info_seperated[1]*intem_info_seperated[2]
      @total += added_value
    else
      @total += intem_info_seperated[1]
    end
  end

  def apply_discount
    @total = (100-@discount) * @total
  end
end
