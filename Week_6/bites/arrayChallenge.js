
const addToBatch = (array, num) => {
  if (array.length < 5) {
  return array.concat(num);
} 
  return array
}

console.log(addToBatch([1,2,3,4,5,6,7,8,9], 10));

