const got = require('got');

const BASE_URL = 'https://api.github.com/repos/'

class GithubApi {
  constructor() {}

  fetchRepositoryData(repo, cb) {
    got(BASE_URL + repo).then((res) => {
      const data = JSON.parse(res.body)
      cb(data);
    });
  };
}


const api = new GithubApi();

api.fetchRepositoryData('sinatra/sinatra', (repositoryData) => {
  console.log(repositoryData);})

module.exports = GithubApi;