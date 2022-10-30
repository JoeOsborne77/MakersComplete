class GuardianApi {
  constructor() {
    this.apiURL =
      "https://content.guardianapis.com/search?api-key=55e5d388-8b9e-477c-b420-c20a69c2be80&show-fields=thumbnail";
  }
  loadArticles(callback) {
    fetch(this.apiURL)
      .then((response) => response.json())
      .then((data) => {
        callback(data);
      });
  }

  // searchArticles() {
  //   this.apiArr = [];
  //   const articleCardTemplate = document.querySelector(
  //     "[data-article-template]"
  //   );

  //   const articleCardContainer = document.querySelector(
  //     "[data-articles-container]"
  //   );
  //   fetch(this.apiURL)
  //     .then((response) => response.json())
  //     .then((data) => {
  //       const dataResult = data.response.results;
  //       this.apiArr.push(dataResult);
  //       this.apiArr.forEach((article) => {
  //         const card = articleCardTemplate.content.cloneNode(true);
  //         const header = card.querySelector("[data-header]");
  //         console.log(article);
  //         header.textContent = article.webTitle;
  //         articleCardContainer.append(card);
  //       });
  //     });
  // }
}

module.exports = GuardianApi;
