class Thermostat {
  constructor() {
  this.temperature = 20;
  this.powersaving = true;
  }

  up(){
    if (this.powersaving === true && this.temperature < 25) {
      this.temperature += 1;
    } else if (this.powersaving === false && this.temperature < 32) {
        this.temperature += 1;
    }
  };

  down(){
    if (this.temperature > 10) {
    this.temperature -= 1;
    }
  };

  setPowerSavingMode(boolean) {
    this.powersaving = boolean
  };

  energyUsage(){
    if (this.temperature < 18){
      return 'low-usage';
    }
    else if(this.temperature <= 25) {
      return 'medium-usage';
    }
    else{
      return 'high-usage';
    }
  };

  reset(){
    this.temperature = 20;
  };

  getTemp(){
    return this.temperature;
  }
};

therm = new Thermostat();
console.log(therm.setPowerSavingMode(true));

module.exports = Thermostat;