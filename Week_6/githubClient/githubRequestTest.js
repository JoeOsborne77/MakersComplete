const fetchJson = require('./fetchJson.js');

describe('fetchJson', () => {
  it('returns the webpage body', () => {
    const thermostat = new Thermostat();
    expect(thermostat.getTemp()).toEqual(20);
  });
  });

