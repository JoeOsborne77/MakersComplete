const names = ['Anna', 'Laura', 'Josh', 'Min', 'Karla'];

const generateMessages = (array) => {
  return array.map(x => `Hi ${x}! 50% off our best candies for you today!`);
  }

console.log(generateMessages(names));
