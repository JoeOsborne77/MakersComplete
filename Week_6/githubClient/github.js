const githubApi = require('./githubApi.js')

class Github {
  constructor(api){
    this.api = api;
  }

  fetch = (repoName) => {
    this.api.fetchRepositoryData(repoName, (repoData) => {
       this.repoData = repoData 
    })
  };

  getRepoData = () => {
    return this.repoData;
  };
}

module.exports = Github;