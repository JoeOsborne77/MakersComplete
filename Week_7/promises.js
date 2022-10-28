fetch("https://jsonplaceholder.typicode.com/todos")
  .then(() => {
    console.log("ok");
  })
  .catch(() => {
    console.log("error");
  });
