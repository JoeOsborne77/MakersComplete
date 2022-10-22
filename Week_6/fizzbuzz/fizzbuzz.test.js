const fizzBuzz = require('./fizzbuzz');

describe('fizzbuzz', () => {
  it('returns fizz', () => {
    expect(fizzBuzz(3)).toBe('Fizz');
  });
});

describe('fizzbuzz', () => {
  it('returns fizz', () => {
    expect(fizzBuzz(5)).toBe('Buzz');
  });
});

describe('fizzbuzz', () => {
  it('returns fizz', () => {
    expect(fizzBuzz(15)).toBe('FizzBuzz');
  });
});