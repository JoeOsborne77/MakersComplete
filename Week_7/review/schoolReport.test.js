const schoolReport = require('./schoolReport.js')

describe('schoolReport', () => {
  it("is able to count the instance of a single grade", () => {
    expect(schoolReport('Green')).toEqual('GREEN: 1\nAMBER: 0\nRED: 0');
  })

  it("is able to count the instance of two grades", () => {
    expect(schoolReport('Green, Red')).toEqual('GREEN: 1\nAMBER: 0\nRED: 1');
  })

  it("is able to count the instance of multiple grades", () => {
    expect(schoolReport('Green, Red, Amber, Amber, red, gReen')).toEqual('GREEN: 2\nAMBER: 2\nRED: 2');
  })
});