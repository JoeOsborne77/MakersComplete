require_relative "../lib/baskettotal.rb"
require_relative "../lib/send_sms.rb"

RSpec.describe BasketTotal do
  it "shows order and total cost" do
    basket = BasketTotal.new
    basket.add("buljol")
    basket.add("calimari")
    basket.add("soft drink")
    basket.add("oyster mushroom pancakes")
    basket.menu_list
    expect(basket.see_total).to eq "ORDER: [\"buljol\", 15.0, \"calimari\", 3.99, \"soft drink\", 1.99, \"oyster mushroom pancakes\", 8.99] TOTAL: £29.97"
  end

  it "shows order and total cost" do
    basket = BasketTotal.new
    basket.add("buljol")
    basket.add("calimari")
    basket.add("soft drink")
    basket.add("oyster mushroom pancakes")
    basket.menu_list
    expect(basket.see_total).to eq "ORDER: [\"buljol\", 15.0, \"calimari\", 3.99, \"soft drink\", 1.99, \"oyster mushroom pancakes\", 8.99] TOTAL: £29.97"
  end
end
