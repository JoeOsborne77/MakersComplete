const got = require('got');

const city = 'London';
const apiKey = //'6f5ec01c0de4698b3413282afc8f05f4'; 
const apiUrl = `http://api.openweathermap.org/data/2.5/weather?units=metric&q=${city}&appid=${apiKey}`;

class WeatherApi {

  fetchWeatherData(city, cb) {
    got(apiUrl).then((res) => {
      const data = JSON.parse(res.body)
      cb(data);
    })};
  }

const api = new WeatherApi();

api.fetchWeatherData('London', (weatherData) => {
  console.log(weatherData);
});

module.exports = WeatherApi;