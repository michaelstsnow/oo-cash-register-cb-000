class CashRegister
  attr_accessor(:discount,:total,:items)

  def initialize(discount=0)
    @discount=discount
    @total=0
    @items=[]
  end

  def add_item(item,price,quantity=1)
      added_value=price * quantity
      @total += added_value
      for i in quantity do
        @items << item
      end
  end

  def apply_discount
    if @discount >= 1
      @total = ((100-@discount)/100) * @total
      "After the discount, the total comes to #{@total}."
    else
      "There is no discount to apply."
    end
  end



end
