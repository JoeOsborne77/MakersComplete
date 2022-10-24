const notesModel = require('./notesModel.js')

const model = new notesModel;

model.addNote("gym")
console.log(model.getNotes());

console.log('The notes app is running')
