const Game = require('./game')
const Frame = require('./frame');
const TenthFrame = require('./tenthframe');
const prompt = require("prompt-sync")();

 class App {
  constructor() {
    this.game = new Game
  }

  play(){
    const times = 10;
    for(let i = 0; i < times; i++){
      if (this.game.frames.length < 9) {
      let roll1 = this.userRoll1();
        if (roll1 < 0 || roll1 > 10) {this.incorrectScore()};
        if (roll1 < 0 || roll1 > 10) {roll1 = 0};

      if (roll1 === 10) {
        let roll2 = 0
        this.game.addFrame(roll1, roll2)
      } else {
        let roll2 = this.userRoll2();
        if (roll2 < 0 || roll2 > 10) {this.incorrectScore()};
        if (roll2 < 0 || roll2 > 10) {roll2 = 0}; 
        this.game.addFrame(roll1, roll2)}; 
      };

      if (this.game.frames.length == 9) this.playFrame10();
    }};

  playFrame10() {
    let roll1 = this.userRoll1();
    if (roll1 < 0 || roll1 > 10) {this.incorrectScore()};
    let roll2 = this.userRoll2();
    if (roll2 < 0 || roll2 > 10) {this.incorrectScore()};
    if (roll1 < 0 || roll1 > 10) {roll1 = 0};
    if (roll2 < 0 || roll2 > 10) {roll2 = 0}; 

    if (roll1 + roll2 < 10) {this.game.addFrame(roll1, roll2)}; 
    if (roll1 + roll2 >= 10) {
      let roll3 = this.userRoll3();
      if (roll3 < 0 || roll3 > 10) {this.incorrectScore()};
      if (roll3 < 0 || roll3 > 10) {roll3 = 0}; 
      this.game.addFrame(roll1, roll2, roll3)
    };
 
  };

  score(){
    console.log(`Thank you for playing. You total score was: ${this.game.score()}`);
  };

  userRoll1(){
    const promptMessage = (`Please enter the score from your first roll from Frame ${this.game.frames.length + 1}: `);
    return parseInt(prompt(promptMessage));
  };

  userRoll2(){
    const promptMessage = (`Please enter the score from your second roll from Frame ${this.game.frames.length + 1}: `);
    return parseInt(prompt(promptMessage));
  };

  userRoll3(){
    const promptMessage = ('Bonus throw! Enter the score from your final roll: ');
    return parseInt(prompt(promptMessage));
  };

  incorrectScore(){
    console.log('Incorrect input. Score must be 0 - 10. Score will be counted as 0');
  };
};

module.exports = App;
const app = new App
app.play()
app.score()
