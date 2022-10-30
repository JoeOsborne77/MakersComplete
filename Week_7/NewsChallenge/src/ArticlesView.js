class ArticlesView {
  constructor(model, api) {
    this.model = model;
    this.api = api;
    this.newsFeed = document.querySelector("#news-feed");
    this.clearFeedBtn = document.querySelector("#clear-feed-button");
    this.searchBtn = document.querySelector("#search-button");
    this.refreshBtn = document.querySelector("#refresh-button");
    this.keyword = document.querySelector("#search-input").value;
    this.allHeadlines = [document.querySelectorAll("h1")]; // get all the divs in an array
    this.searchBtn.addEventListener("click", () => {
      this.searchNews();
    });
    this.clearFeedBtn.addEventListener("click", () => {
      this.clearFeed();
    });
  }

  searchNews() {
    this.displayArticlesFromApi();
    this.clearFeed;
    const articlesFromModel = this.model.getArticles();
    articlesFromModel.forEach((article) => {
      this.model.searchArticles(article);
      this.addImage(article);
      this.addHeadline(article);
    });
  } // this is the best way - interact with model class

  displayArticlesFromApi() {
    this.api.loadArticles(
      (repoData) => {
        this.model.addArticle(repoData.response.results);
        this.displayArticles();
      },
      () => {
        this.displayError();
      }
    );
  }

  displayArticles() {
    const articlesFromModel = this.model.getArticles();
    articlesFromModel.forEach((article) => {
      this.addImage(article);
      this.addHeadline(article);
    });
  }

  addHeadline(article) {
    const h1 = document.createElement("h1");
    h1.className = "news-title";
    h1.innerText = article.webTitle;
    h1.onclick = () => {
      window.location.href = article.webUrl;
    };
    this.newsFeed.append(h1);
  }

  addImage(article) {
    const img = document.createElement("img");
    img.className = "news-image";
    img.setAttribute("id", article.id);
    img.src = article.fields.thumbnail;
    img.onclick = () => {
      window.location.href = article.webUrl;
    };
    this.newsFeed.append(img);
  }

  displayError() {
    let errorMessage = document.createElement("div");
    errorMessage.className = "error";
    errorMessage.textContent = "Oops, something went wrong!";
    this.newFeed.append(errorMessage);
  }

  clearFeed() {
    const images = document.querySelectorAll("img.news-image");
    images.forEach((element) => {
      element.remove();
    });
    const headlines = document.querySelectorAll("h1.news-title");
    headlines.forEach((element) => {
      element.remove();
    });
  }
}

module.exports = ArticlesView;
