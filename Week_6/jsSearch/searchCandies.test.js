const searchCandies = require('./candies')

describe('candies', () => {
  it('returns correct list', () => {
    expect(searchCandies('Ma', 10)).toEqual(['Mars', 'Maltesers']);
  });

  it('returns correct list', () => {
    expect(searchCandies('Ma', 2)).toEqual(['Mars']);
  });
  
  it('returns correct list', () => {
    expect(searchCandies('S', 10)).toEqual([ "Skitties", "Skittles", "Starburst"]);
  });

  it('returns correct list', () => {
    expect(searchCandies('S', 3)).toEqual(['Skitties', 'Skittles']);
  });
});