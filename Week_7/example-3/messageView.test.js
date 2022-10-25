/**
 * @jest-environment jsdom
 */

const fs = require('fs');
const MessageView = require('./messageView');

describe('MessageView', () => {
  it('displays the message from the user when they click the button', () => {
    document.body.innerHTML = fs.readFileSync('./index.html');
    const view = new MessageView();
    const buttonEl = document.querySelector('#show-message-button');
    const inputEl = document.querySelector('#message-input');
    inputEl.value = 'test message';
    buttonEl.click();
    expect(document.querySelector('#message')).not.toBeNull();
    expect(document.querySelector('#message').innerText).toEqual('test message');

  });

  it('clicks the button', () => {
    document.body.innerHTML = fs.readFileSync('./index.html');
    const view = new MessageView();
    const buttonEl = document.querySelector('#show-message-button');
    buttonEl.click();

    const hidebuttonEl = document.querySelector('#hide-message-button');
    hidebuttonEl.click();
    expect(document.querySelector('#message')).toBeNull();
  });
});