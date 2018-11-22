class CashRegister
  attr_accessor(:discount,:total,:items,:quantities)

  def initialize(discount=0)
    @discount=discount.to_f
    @total=0
    @items=[]
    @quantities=[]
  end

  def add_item(item,price,quantity=1)
      added_value=price * quantity
      @total += added_value
      @quantities <<
      while quantity >=1
        @items << item
        quantity -= 1
      end
  end

  def apply_discount
    @total = @total - ((@discount/100) * @total)
    total_string=@total.to_s.split(".")
    if @discount > 0
      "After the discount, the total comes to $#{total_string[0]}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction

  end

end
