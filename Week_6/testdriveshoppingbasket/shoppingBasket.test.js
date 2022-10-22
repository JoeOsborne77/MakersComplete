const Candy = require('./candy.js');
const shoppingBasket = require('./shoppingBasket.js');

describe('shoppingBasket', () => {
  it('returns correct name', () => {
    const basket = new shoppingBasket();
    basket.addItem(new Candy('Skittle', 3.99));
    basket.addItem(new Candy('twix', 1.99));
    basket.addItem(new Candy('jelly', 1.00));
    expect(basket.getTotalPrice()).toEqual(6.98);
    basket.addItem(new Candy('snickers', 0.09));
    expect(basket.getTotalPrice()).toEqual(7.07);
  });
});