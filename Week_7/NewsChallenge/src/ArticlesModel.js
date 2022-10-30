class ArticlesModel {
  constructor() {
    this.articles = [];
    this.searchedArticles = [];
  }

  getArticles() {
    return this.articles;
  }

  addArticle(article) {
    article.forEach((a) => {
      this.articles.push(a);
    });
  }

  reset() {
    this.articles = [];
  }

  searchArticles(keyword) {
    this.articles.filter((article) => {
      if (article.webTitle.includes(keyword)) {
        this.searchedArticles.push(article);
      }
    });
  }
}

module.exports = ArticlesModel;
