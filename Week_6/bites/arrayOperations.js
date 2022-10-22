const checkLength = (phoneNumber) => {
  if (phoneNumber.length <= 10) {
    return true;
  } else {
    return false;
  }
}

const filterLongNumbers = (numbers) => {
  return numbers.filter(checkLength)
}

const numbers = [
  '1763687364',
  '4763687363',
  '7867867862',
  'aaaaaaaabbbbbbbcccccdddddddd' // this element should be filtered
];

console.log(numbers.filter(checkLength)); // both do the same thing 
console.log(filterLongNumbers(numbers));  // both do the same thing 

