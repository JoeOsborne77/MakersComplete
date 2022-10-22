const got = require('got');

const fetchJson = (url, cb) => {
  got(url).then(cb) => {
    const data = JSON.parse(cb.body);
    console.log(cb(data));
  }
}

fetchJson('https://jsonplaceholder.typicode.com/todos', (cb) =>
{ console.log(cb) });

module.exports = fetchJson;