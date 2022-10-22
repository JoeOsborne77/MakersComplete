import Candy from './candy.js';

class shoppingBasket {
  constructor(candies = []){
  this.candies = candies;
  }

  getTotalPrice(){
    let sum = 0;
    this.candies.map( item => (sum += item.getPrice()));
    return sum;
  }

  addItem(candy){
    this.candies.push(candy);
  }
}

const basket = new shoppingBasket();
basket.addItem(new Candy('Skittle', 3.99));
basket.addItem(new Candy('twix', 1.99));
basket.addItem(new Candy('jelly', 800.99));
console.log(basket.getTotalPrice());