const got = require('got');

const BASE_URL = 'https://api.github.com/repos/'

const fetchRepositoryInfo = (repo, cb) => {
  got(BASE_URL + repo).then((response) => {
  const data = JSON.parse(response.body);  
  cb(data);
  });
}



fetchRepositoryInfo('sinatra/sinatra', (receivedResponse) => {
  console.log(receivedResponse);
});

module.exports = fetchRepositoryInfo;