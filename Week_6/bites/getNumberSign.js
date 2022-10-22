const getNumberSign = (x) => { 
  if (x > 0) {
    return "positive"
  } else if (x < 0) {
    return "negative"
  } else {
    return "zero" 
  }
}

module.exports = getNumberSign;