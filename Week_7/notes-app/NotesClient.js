class NotesClient {
  loadNotes(callback, errorCallback) {
    fetch("http://localhost:3000/notes")
      .then((response) => response.json())
      .then((data) => {
        callback(data);
      })
      .catch(() => {
        errorCallback();
      });
  }

  createNote(note, errorCallback) {
    const data = { content: note };
    fetch("http://localhost:3000/notes", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(data),
    })
      .then((response) => {
        response.json();
      })
      .then((data) => {
        console.log("Success:", data);
      })
      .catch(() => {
        errorCallback();
      });
  }

  deleteNotes() {
    fetch("http://localhost:3000/notes", {
      method: "DELETE",
    }).then((response) => {
      return response.json();
    });
  }
}

module.exports = NotesClient;
