class Weather {
  constructor(api) {
    this.api = api;
    this.apiData;
  }

  fetch() {
    this.api.fetchWeatherData((result) => {
      this.apiData = result;
    });
  }

  getWeatherData() {
    return this.apiData;
  }
}


module.exports = Weather;