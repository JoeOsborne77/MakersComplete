class Candy {
  constructor(name, price){
    this.name = name;
    this.price = price;
  }

  getName(){
    return this.name;
  } 

  getPrice(){
    return this.price;
  } 
}

module.exports = Candy;
// console.log(candy.getName())
// console.log(candy.getPrice())

// const basket = new ShoppingBasket();
// basket.getTotalPrice();
// 0

// basket.addItem(candy);

// basket.getTotalPrice();
// 4.99

// basket.addItem(new Candy('Skittle', 3.99));
// basket.addItem(new Candy('Skittle', 3.99));

// basket.getTotalPrice();
// 12.97