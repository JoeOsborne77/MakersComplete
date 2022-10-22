const uppercaseMessage = (message) => {
  return message.toUpperCase();
}

const transform = (message, transformFunction) => {
  return transformFunction(message);
}

module.exports = { 
  uppercaseMessage : uppercaseMessage,
  transform : transform
}