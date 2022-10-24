You will now implement, test-driving, a JavaScript class to hold our program data (the model class). This will be similar to previous classes you've written, acting as a "wrapper" for our program's state.

Here's an acceptance criteria for this class — how we want it to behave, once implemented:

const model = new NotesModel();

model.getNotes(); // should return []

model.addNote('Buy milk');
model.addNote('Go to the gym');

model.getNotes(); // should now return ['Buy milk', 'Go to the gym']

model.reset();

model.getNotes(); // should now return []
Questions
Install jest in the project directory with npm install --save jest and create a test file notesModel.test.js.
Write the test cases for NotesModel (at least three) verifying the acceptance criteria shown above, and test-drive the NotesModel class (in notesModel.js), one test at a time. To test arrays, prefer the use of .toEqual() matcher over .toBe().