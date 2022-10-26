const Game = require('../lib/game.js')

describe('Game', () => {
  it("adds a frame to the list of frames", () => {
    const game = new Game
    game.addFrame(2,3);
    expect(game.frames.length).toEqual(1);
  });

  it("does not allow more than 9 'normal' frames", () => {
    const game = new Game
    game.addFrame(2,3);
    game.addFrame(2,3);
    game.addFrame(2,3);
    game.addFrame(2,3);
    game.addFrame(2,3);
    game.addFrame(2,3);
    game.addFrame(2,3);
    game.addFrame(2,3);
    game.addFrame(2,3);
    game.addFrame(2,3);
    expect(game.frames.length).toEqual(10);
    expect(game.addFrame(2,3)).toEqual("No more throws")});

  it("records correct perfect game score", () => {
    const game = new Game
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(10,10,10);
    expect(game.frames.length).toEqual(10);
    expect(game.score()).toEqual(300);
  });

  it("records correct game score", () => {
    const game = new Game
    game.addFrame(2,3);
    game.addFrame(2,3);
    game.addFrame(2,3);
    game.addFrame(0,3);
    game.addFrame(5,5);
    game.addFrame(4,6);
    game.addFrame(10,0);
    game.addFrame(4,3);
    game.addFrame(2,1);
    game.addFrame(10,10,4);
    expect(game.frames.length).toEqual(10);
    expect(game.score()).toEqual(103);
  });
  
  it("records correct game score", () => {
    const game = new Game
    game.addFrame(3,3);
    game.addFrame(3,3);
    game.addFrame(3,3);
    game.addFrame(3,3);
    game.addFrame(5,0);
    game.addFrame(5,5);
    game.addFrame(5,5);
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(4,3,0);
    expect(game.frames.length).toEqual(10);
    expect(game.score()).toEqual(112);
  });

  it("records correct game score", () => {
    const game = new Game
    game.addFrame(3,3);
    game.addFrame(3,3);
    game.addFrame(3,3);
    game.addFrame(3,3);
    game.addFrame(5,5);
    game.addFrame(5,5);
    game.addFrame(5,5);
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(4,3,0);
    expect(game.frames.length).toEqual(10);
    expect(game.score()).toEqual(122);
  });

  it("records correct score", () => {
    const game = new Game
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(0,0);
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(10,10,10);
    expect(game.frames.length).toEqual(10);
    expect(game.score()).toEqual(240);
  });

  it("records gutter game", () => {
    const game = new Game
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    expect(game.frames.length).toEqual(10);
    expect(game.score()).toEqual(0);
  });

  it("records correct score", () => {
    const game = new Game
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(7,2);
    game.addFrame(0,0);
    game.addFrame(4,3);
    game.addFrame(10,0);
    game.addFrame(2,5);
    game.addFrame(0,0);
    game.addFrame(0,0);
    expect(game.frames.length).toEqual(10);
    expect(game.score()).toEqual(40);
  });

  it("records mix of strikes and spares", () => {
    const game = new Game
    game.addFrame(0,0);
    game.addFrame(9,1);
    game.addFrame(0,0);
    game.addFrame(7,2);
    game.addFrame(10,0);
    game.addFrame(4,3);
    game.addFrame(10,0);
    game.addFrame(2,5);
    game.addFrame(0,0);
    game.addFrame(10,9,1);
    expect(game.frames.length).toEqual(10);
    expect(game.score()).toEqual(87);
  });

  it("records mix of strikes and spares", () => {
    const game = new Game
    game.addFrame(4,6);
    game.addFrame(4,6);
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(10,0);
    game.addFrame(4,6);
    game.addFrame(5,3);
    game.addFrame(4,6);
    game.addFrame(10,0);
    game.addFrame(3,2,0);
    expect(game.frames.length).toEqual(10);
    expect(game.score()).toEqual(171);
  });

  it("records mix of strikes and spares", () => {
    const game = new Game
    game.addFrame(4,6);
    game.addFrame(4,6);
    game.addFrame(4,6);
    game.addFrame(4,0);
    game.addFrame(10,0);
    game.addFrame(4,6);
    game.addFrame(5,5);
    game.addFrame(4,6);
    game.addFrame(3,0);
    game.addFrame(10,10,0);
    expect(game.frames.length).toEqual(10);
    expect(game.score()).toEqual(131);
  });

  it("records gutter game", () => {
    const game = new Game
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(7,0);
    game.addFrame(0,0);
    game.addFrame(0,2);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    expect(game.frames.length).toEqual(10);
    expect(game.score()).toEqual(9);
  });

  it("records spares", () => {
    const game = new Game
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(7,3);
    game.addFrame(4,0);
    game.addFrame(0,2);
    game.addFrame(0,0);
    game.addFrame(4,6);
    game.addFrame(2,0);
    game.addFrame(0,0);
    expect(game.frames.length).toEqual(10);
    expect(game.score()).toEqual(34);
  });


  it("records spares", () => {
    const game = new Game
    game.addFrame(9,1);
    game.addFrame(9,1);
    game.addFrame(9,1);
    game.addFrame(9,1);
    game.addFrame(9,1);
    game.addFrame(9,1);
    game.addFrame(9,1);
    game.addFrame(9,1);
    game.addFrame(9,1);
    game.addFrame(9,1,9);
    expect(game.frames.length).toEqual(10);
    expect(game.score()).toEqual(190);
  });

  it("records spares", () => {
    const game = new Game
    game.addFrame(9,1);
    game.addFrame(4,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0);
    game.addFrame(0,0,0);
    expect(game.frames.length).toEqual(10);
    expect(game.score()).toEqual(18);
  });
});
