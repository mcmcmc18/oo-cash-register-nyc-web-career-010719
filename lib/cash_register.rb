require 'pry'
class CashRegister

attr_accessor :total, :quantity, :discount, :items
attr_reader :item, :price


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total = @total + (price * quantity)
    counter = 0
    while counter < quantity
      @items << item
      counter +=1
    end
  end

  def apply_discount
    if discount > 0
      self.total -= (@total * @discount) / 100
      return "After the discount, the total comes to $#{self.total}."
else
 "There is no discount to apply."
end
end


  def void_last_transaction
     @total -= @price
   end


end #end of class
