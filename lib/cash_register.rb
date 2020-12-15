require "pry"


class CashRegister

  attr_accessor :total

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end

  def discount
    @discount
  end

  def add_item(item, price, quantity = 1)
    new_total = self.total += price * quantity
    @total = new_total

    quantity.times do
    @items << item
    end

    @price = price * quantity
    
  end

  def items
    @items
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total - (@total * @discount)/100
      @total = @total.round(2)
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total = @total - @price
    
  end

end


