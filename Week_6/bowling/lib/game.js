const Frame = require('./frame');
const TenthFrame = require('./tenthframe');

class Game {

  constructor() {
    this.frames = []
  }

  addFrame(roll1, roll2, roll3) { 
    if (this.frames.length == 9) this.frames.push(new TenthFrame(roll1, roll2, roll3));
    if (this.frames.length < 9) this.frames.push(new Frame(roll1, roll2));
    else {return "No more throws"}
  }
 
  score() {
    let total = 0

    this.frames.map((fr,idx) => {
      if(fr.roll1 === 10 && this.frames[idx+1] != null && this.frames[idx+2] === null && this.frames[idx+1].roll1 === 10) 
        {fr.roll1 += (this.frames[idx+1].roll1)} // consecutive strikes

      if(fr.roll1 === 10 && this.frames[idx+2] != null && this.frames[idx+1].roll1 === 10) 
        {fr.roll1 += (this.frames[idx+1].roll1 + this.frames[idx+2].roll1)} // consecutive strikes

      if(fr.roll1 === 10 && this.frames[idx+1] != null) 
        {fr.roll1 += (this.frames[idx+1].roll1 + this.frames[idx+1].roll2)} // normal strikes

      if(fr.roll1 + fr.roll2 === 10 && this.frames[idx+1] != null) 
        {fr.roll1 += (this.frames[idx+1].roll1)}  // spares

      if(this.frames.length === 10 && fr.roll1 === 10 || fr.roll1 + fr.roll2 === 10) 
      {fr.roll1 += (fr.roll3 || 0)} // tenth round
      
      total += (fr.roll1 + fr.roll2);

    });
    return total;
  };
}

module.exports = Game