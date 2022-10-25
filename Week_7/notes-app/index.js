const notesModel = require('./notesModel.js')
const NotesView = require('./NotesView.js')
const model = new notesModel;
const view = new NotesView(model);

console.log(view.displayNotes());
