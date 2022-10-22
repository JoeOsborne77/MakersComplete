
export default class Candy {
  constructor(name, price){
  this.name = name;
  this.price = price;
}

  getName(){
  return this.name;
}

  getPrice() {
  return this.price;
}
}

const candy = new Candy('Mars', 4.99);

// console.log(candy.getName())
// console.log(candy.getPrice())


