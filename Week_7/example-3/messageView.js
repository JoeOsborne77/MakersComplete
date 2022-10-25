class MessageView {
  constructor() {
    this.buttonEl = document.querySelector('#show-message-button');
    this.hideButtonEl = document.querySelector('#hide-message-button');


    this.buttonEl.addEventListener('click', () => {
       this.displayMessage();
    });

    this.hideButtonEl.addEventListener('click', () => {
      this.deleteMessage();
   });
  }

  displayMessage() {
    // console.log('Thanks for clicking me!');
    const message = document.querySelector('#message-input').value;
    const messEl = document.createElement('div');
    messEl.id = 'message';
    messEl.innerText = message
    document.querySelector('#main-container').append(messEl);
  }

  deleteMessage() {
    document.querySelector('#message').remove();
  }
  }

module.exports = MessageView;