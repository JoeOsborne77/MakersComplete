const got = require('got');

const fetchJson = (url, cb) => {
  got(url).then((res) => {
    const data = JSON.parse(res.body);
    console.log(cb(data));
  });
}

fetchJson('https://jsonplaceholder.typicode.com/todos', (res) =>
{ console.log(res) }); 

module.exports = fetchJson;