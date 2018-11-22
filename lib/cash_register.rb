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
      while quantity >=1
        @items << item
        quantity -= 1
      end
  end

  def apply_discount
    #@total = @total - ((@discount/100) * @total)
    @total = (@discount.to_i/100)
    if @discount > 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end



end
