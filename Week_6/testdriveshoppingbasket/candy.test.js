const Candy = require('./candy.js');

describe('Candy', () => {
  it('returns correct name and price', () => {
    const sweets = new Candy('Mars', 4.99);
    expect(sweets.getPrice()).toEqual(4.99);
    expect(sweets.getName()).toEqual('Mars');
  });
});