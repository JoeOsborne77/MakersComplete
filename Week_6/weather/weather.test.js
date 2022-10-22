const Weather = require('./Weather.js')

describe("Weather", () => {
  it("can get repo data from open weather", () => {
    const mockedApi = {
      fetchWeatherData: (cb) => {
        cb({
          city: "Norwich",
          description: "Cloudy With Meatballs"
         })
      }
    }
    const weatherClass = new Weather(mockedApi);
      weatherClass.fetch("Norwich")
      expect(weatherClass.getWeatherData()).toEqual({
        city: "Norwich",
        description: "Cloudy With Meatballs"
      })
    })
  })



