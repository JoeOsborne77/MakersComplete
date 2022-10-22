class BasketTotal
  def initialize
    @order_list = []
    @total = []
  end

  def add(menu)
    @order_list << menu
  end

  def menu_list
    menu_list = {
      "fried chicken" => 8.99,
      "katsu curry" => 9.99,
      "egg friend rice" => 4.00,
      "margherita pizza" => 11.00,
      "vegetable roti" => 7.00,
      "cheese burger" => 8.00,
      "fries" => 2.00,
      "oreo milkshake" => 3.00,
      "buljol" => 15.00,
      "calimari" => 3.99,
      "soft drink" => 1.99,
      "oyster mushroom pancakes" => 8.99,
      "vegan chicken wings" => 12.99,
      "nigiri rolls" => 8.00,
      "red wine bottle" => 19.99,
      "lasagne" => 15.99
    }

    menu_list.select { |item, value| if @order_list.include?(item) 
      @total << [item, value] end }
  end

  def see_total
    "ORDER: #{@total.flatten} TOTAL: £#{@total.to_h.values.sum}"
  end

  def place_order
    require_relative '../lib/send_sms.rb'
  end
end 

basket1 = BasketTotal.new 
basket1.place_order