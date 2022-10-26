const schoolReport = (report) => {
  const arr = report.toUpperCase();
  const newArr = arr.split(',');
  const newArr2 = newArr.map(el => {return el.trim();})
  const green = []
  const red = []
  const amber = []
 
  newArr2.forEach(el => {
    if(el === "GREEN") {green.push(el)}});
  
  newArr2.forEach(el => {
    if(el === "RED") {red.push(el)}});

  newArr2.forEach(el => {
    if(el === "AMBER") {amber.push(el)}});
    
  return `GREEN: ${green.length}\nAMBER: ${amber.length}\nRED: ${red.length}`;
}

module.exports = schoolReport;