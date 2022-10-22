import User from './class.js';

const users = [
  new User('Uma'),
  new User('Josh'),
  new User('Ollie')
];

class UserBase {
  constructor(array){
  this.array = array
  }
  getNames(){
    return this.array.map (x => `${x.getName()}`);
  }

  getIntroductions(){
    return this.array.map (x => `${x.getIntroduction()}`);
  }
}

const userBase = new UserBase(users); // do not change
console.log(userBase.getNames());
console.log(userBase.getIntroductions());