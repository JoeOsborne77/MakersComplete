const lowercaseMessage = (message) => {
  return message.toLowerCase();
}

const transform = (message, transformFunction) => {
  return transformFunction(message);
}

module.exports = { 
  lowercaseMessage : lowercaseMessage,
  transform : transform
}