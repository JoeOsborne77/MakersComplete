class NotesView {
  constructor(model) {
    this.model = model;
    this.mainContainerEl = document.querySelector('#main-container');

    document.querySelector('#add-note-button').addEventListener('click', () => {
      const newNote = document.querySelector('#add-note-input').value;
      this.addNewNote(newNote);
    });
  }

  addNewNote(newNote) {
    this.model.addNote(newNote);
    this.displayNotes();
  }

  displayNotes() {
    document.querySelectorAll('note').forEach(element => {
      element.remove();
    });

    document.getElementById('add-note-input').value = "";

    const notes = this.model.getNotes()  
    notes.forEach(note => {
      const noteEl = document.createElement('div');
      noteEl.textContent = note;
      noteEl.className = 'note';
      this.mainContainerEl.append(noteEl);
    });
  };
};


module.exports = NotesView;

// have a constructor
// the model should be dependency-injected into it.
// have a method displayNotes which will:
// get the list of notes from the model.
// for each note, create a new div element on the page (with an HTML class "note").
// You'll have to research how an HTML class can be set to an element in JavaScript.

// Troubleshooting common problems
// If, when running the test, you're getting an error such as document
//  is not defined or Cannot read property 'append' of null — make sure you've setup your test
//  like in the template.
// If the number of elements returned by document.querySelectorAll is still zero after 
// implementing the new method — did you make sure to set the HTML class note on the new elements?