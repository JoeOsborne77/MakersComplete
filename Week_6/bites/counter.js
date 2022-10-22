let counter = 0;

const increment = () => {
    return counter++;
}

setInterval(() => {
  console.log(increment(counter));
}, 2000);