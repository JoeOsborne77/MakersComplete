const printHello = () => {
  console.log('Hello!');
}

const executeAfterDelay = (delay, callbackFunction) => {
  setTimeout(callbackFunction, delay * 1000);
}

console.log(executeAfterDelay(20, printHello));

