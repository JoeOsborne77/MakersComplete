class GithubView {
  constructor(model, client) {
    this.model = model;
    this.client = client;

    const submitButtonEl = document.querySelector('#submit-button');
    const repoInputEl = document.querySelector('#repo-name-input');

    submitButtonEl.addEventListener('click', () => {
      const repoName = repoInputEl.value;

      this.client.getRepoInfo(repoName, repoData => {
        this.display(repoData);
      });
    });
  }

  display(repoData) {
    console.log("Learning about the interweb");
    document.querySelector('#repo-name').textContent = repoData.full_name;
    document.querySelector('#repo-description').textContent = repoData.description;
    document.querySelector('#repo-image').src = repoData.organization.avatar_url;

    }

  deleteMessage() {
    document.querySelector('#message').remove();
  }
}

module.exports = GithubView;