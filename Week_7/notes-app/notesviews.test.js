/**
 * @jest-environment jsdom
 */

const fs = require('fs');
const NotesView = require('./NotesView.js')
const notesModel = require('./notesmodel.js')

describe('NotesView', () => {
  // it('returns empty notes', () => {
  //   const model = new notesModel();
  //   const view = new NotesView(model);
  //   expect(view.displayNotes()).toEqual()
  // })

  it('returns notes', () => {
    document.body.innerHTML = fs.readFileSync('./index.html');
    const model = new notesModel();
    const view = new NotesView(model);
    model.addNote("go to the gym");
    view.displayNotes()
    expect(document.querySelectorAll('div.note').length).toEqual(1)
  })

  it('adds a new note', () => {
    document.body.innerHTML = fs.readFileSync('./index.html');
    const model = new notesModel();
    const view = new NotesView(model);  
    const input = document.querySelector('#add-note-input');
    input.value = 'My new amazing test note';
    const button = document.querySelector('#add-note-button');
    button.click();
    expect(document.querySelectorAll('div.note').length).toEqual(1);
    expect(document.querySelectorAll('div.note')[0].textContent).toEqual('My new amazing test note');
  });

  it('adds multiple notes new note', () => {
    document.body.innerHTML = fs.readFileSync('./index.html');
    const model = new notesModel();
    const view = new NotesView(model);  
    const input = document.querySelector('#add-note-input');
    input.value = 'My new amazing test note';
    const button = document.querySelector('#add-note-button');
    button.click();
    const input2 = document.querySelector('#add-note-input');
    input2.value = 'Foobar';
    button.click();
    expect(document.querySelectorAll('div.note').length).toEqual(2);
    expect(document.querySelectorAll('div.note')[0].textContent).toEqual('My new amazing test note');
  });

 
});


