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
module.exports = shoppingBasket;