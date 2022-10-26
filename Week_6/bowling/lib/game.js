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
      const strike = fr.roll1 === 10 
      const spare = fr.roll1 != 10 && fr.roll1 + fr.roll2 === 10
      const nextFrame = this.frames[idx+1]
      const nextNextFrame = this.frames[idx+2]
      const tenth = this.frames.length === 10

      if(strike && nextNextFrame != null && nextFrame.roll1 === 10) 
        {fr.roll1 += (nextFrame.roll1 + nextNextFrame.roll1)} // consecutive strikes where this is both a next frame and nextnext frame

      if(strike && nextFrame != null && nextNextFrame === null && nextFrame === strike) 
        {fr.roll1 += (nextFrame.roll1 + nextFrame.roll2)} // consecutive strikes where there is no nextNextFrame

      if(fr.roll1 === 10 && nextFrame != null && nextFrame != strike) 
        {fr.roll1 += (nextFrame.roll1 + nextFrame.roll2)} // normal strikes

      if(spare && nextFrame != null) 
        {fr.roll1 += (nextFrame.roll1)}  // spares

      if(tenth && strike || spare) 
      {fr.roll1 += (fr.roll3 || 0)} // tenth round
      
      total += (fr.roll1 + fr.roll2);
    });
    return total;
  };
}

module.exports = Game