{{PROBLEM}} Multi-Class Planned Design Recipe
1. Describe the Problem
      As a customer
      So that I can check if I want to order something
      I would like to see a list of dishes with prices.

      As a customer
      So that I can order the meal I want
      I would like to be able to select some number of several available dishes.

      As a customer
      So that I can verify that my order is correct
      I would like to see an itemised receipt with a grand total.


2. Design the Class System
Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

┌────────────────────────────────────────────────────────────────────────┐
│                                                                        │
│  Class Menu                                                            │
│  Displays items and prices                                             │
│  Allows user to selecter whether they want to order something or not   │
│   Allows user to select multiple items for their order                 │
└┬───────────────────────────────────────────────────────────────────────┘
 │
 │  #Class Basket pulls list / array from Class Menu
 │
┌▼───────────────────────────────────────────────────────────────────────┐
│  Class Basket                                                          │
│  Allows user to see what is in their basket and grand total            │
│                                                                        │
└────────────────────────────────────────────────────────────────────────┘
───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
class Menu
  def initialize
    @basket = []
  end

  def menu_list
    @menu_list = {
      "fried chicken" => 8.99,
      "katsu curry" => 9.99,
      "egg friend rice" => 4.00,
      "margherita pizza" => 11.00,
      "vegetable roti" => 7.00,
      "cheese burger" => 8.00
      "fries" => 2.00
      "oreo milkshake" => 3.00
      "buljol" => 15.00
      "calimari" => 3.99
      "soft drink" => 1.99
      "oyster mushroom pancakes" => 8.99
      "vegan chicken wings" => 12.99
      "nigiri rolls(6)" => 8.00
      "red wine bottle" => 19.99
      "lasagne" => 15.99
    }
  end

  def add_to_basket(item) 
      @basket << @menu_list.select { |k,v| k == item} 
    end
  end
end
───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
class Basket
  def initialize(menu) #menu is instance of Menu class
    @menu = menu
  end

  def display_basket
    @basket
  end

  def total
    @basket.map { |k,v| v.sum }
  end
end
      
───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

 it "displays basket from Menu class" do
  menu = Menu.new
  basket = Basket.new(menu)
  basket.order?
  basket.add_to_basket("buljol")
  basket.add_to_basket("calimari")
  basket.add_to_basket("soft drink")
  basket.add_to_basket("oyster mushroom pancakes")
  expect(basket.display_basket).to eq (

    "buljol" => 15.00
    "calimari" => 3.99
    "soft drink" => 1.99
    "oyster mushroom pancakes" => 8.99
    TOTAL = £29.97
  )



4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

it "allows user to see the menu" do
  menu = Menu.new
  expect(menu.menu_list).to eq (      
    "fried chicken" => 8.99,
    "katsu curry" => 9.99,
    "egg friend rice" => 4.00,
    "margherita pizza" => 11.00,
    "vegetable roti" => 7.00,
    "cheese burger" => 8.00
    "fries" => 2.00
    "oreo milkshake" => 3.00
    "buljol" => 15.00
    "calimari" => 3.99
    "soft drink" => 1.99
    "oyster mushroom pancakes" => 8.99
    "vegan chicken wings" => 12.99
    "nigiri rolls" => 8.00
    "red wine bottle" => 19.99
    "lasagne" => 15.99
  )

  it "allows user to add items to basket" do
    menu = Menu.new
    menu.add_to_basket("soft drink")
    menu.add_to_basket("lasagne")
    menu.add_to_basket("nigiri rolls")
    expect(menu).to eq {"soft drink" => 1.99, "lasagne" => 15.99, "nigiri rolls" => 8.00}

5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.