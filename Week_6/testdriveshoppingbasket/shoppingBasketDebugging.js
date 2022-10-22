const Candy = require('./candy.js');

class shoppingBasket {
  constructor(candies = []){
  this.candies = candies;
  this.discount = 1;
  }

  getTotalPrice() {
    let totalPrice = 0;
    this.candies.forEach((candy) => {
      totalPrice += candy.getPrice();
    });
    return totalPrice - this.discount;
  }

  applyDiscount(discount) {
    discount = this.discount;
  }

  addItem(candy){
    this.candies.push(candy);
  }
}

const basket = new shoppingBasket();
basket.addItem(new Candy('Skittle', 3.99));
basket.addItem(new Candy('twix', 1.99));
basket.addItem(new Candy('jelly', 1.00));
console.log(basket.getTotalPrice());

