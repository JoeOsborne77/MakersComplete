const Github = require('./github.js')

describe('Github', () => {
  it("can get repo data from sinatra", (done) => {
    const mockedApi = {
      fetchRepositoryData: (_, cb) => {
        const mockData = { full_name: "sinatra/sinatra" };
        cb(mockData);
      },
    };

    const github = new Github(mockedApi);
    github.fetch("sinatra/sinatra");
    setTimeout(() => {
      const repoData = github.getRepoData();
      expect(repoData.full_name).toEqual("sinatra/sinatra");
      done();
    }, 0);
  });
});