const ages = [32, 33, 16, 40];
const result = ages.filter(checkAdult);

function checkAdult(age) {
  return ages.includes(age);
}

console.log(checkAdult(32))