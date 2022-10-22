const Thermostat = require('./thermostat.js');

describe('Thermostat', () => {
  it('returns the temperature', () => {
    const thermostat = new Thermostat();
    expect(thermostat.getTemp()).toEqual(20);
  });

  it('returns the increased temperature', () => {
    const thermostat = new Thermostat();
    thermostat.up();
    thermostat.up();
    expect(thermostat.getTemp()).toEqual(22);
    thermostat.down();
    expect(thermostat.getTemp()).toEqual(21);
  });

  it('returns the temperature', () => {
    const thermostat = new Thermostat();
    thermostat.setPowerSavingMode(true)
    for (let i = 0 ; i < 10 ; i++) {
      thermostat.up();
    }
    expect(thermostat.getTemp()).toEqual(25);
    thermostat.setPowerSavingMode(false);
    thermostat.up();
    expect(thermostat.getTemp()).toEqual(26);
  });

  it('returns the energy usage level', () => {
    const thermostat = new Thermostat();
    expect(thermostat.energyUsage()).toEqual('medium-usage');
    thermostat.setPowerSavingMode(false);
    for (let i = 0 ; i < 10 ; i++) {
      thermostat.up();
    }
    expect(thermostat.energyUsage()).toEqual('high-usage');
    for (let i = 0 ; i < 20 ; i++) {
      thermostat.down();
    }
    expect(thermostat.energyUsage()).toEqual('low-usage');
    thermostat.reset();
    expect(thermostat.getTemp()).toEqual(20);

  });
});  

