const notifyByEmail = (email) => {
  return `Email sent to ${email}`
}

const notifyByText = (phonenumber) => {
  return `Text sent to ${phonenumber}`
}

const notify = (phoneOrEmail, transformFunction) => {
  return transformFunction(phoneOrEmail);
}

module.exports = { 
  notifyByEmail : notifyByEmail,
  notifyByText : notifyByText,
  notify : notify
}

console.log(notify('joe@gmail.com', notifyByEmail));