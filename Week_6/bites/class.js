
export default class User {
  constructor(name){
    this.name = name;
  }

    getName(){
    return this.name;
  }

    getPrice() {
    return `Hi, my name is ${this.name}`;
  }
}
// joe = new User('Joe')

// console.log(joe.getIntroduction())


