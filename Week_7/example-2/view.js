class View {
  constructor() {
    this.mainContainerEl = document.querySelector('#main-container');
    this.secondParagraphEl = document.querySelector('#second-paragraph');
    this.secondParagraphEl.textContent = 'different text';
    this.documentAll = document.querySelectorAll('p')
    console.log(this.mainContainerEl);
    console.log(this.secondParagraphEl);
    console.log(this.documentAll);
  }

    addParagraph() {
      const newParagraph = document.createElement('p');
      newParagraph.innerText = 'I was created dynamically by JS.';
      this.mainContainerEl.append(newParagraph);
    }

    clearParagraphs() {
      this.documentAll.forEach((el) => el.remove());
    }
}

module.exports = View;