require "counter"

RSpec.describe Counter do
  it "counts numbers passed so far" do
  counter = Counter.new
  counter.add(1)
  result = counter.report
  expect(result).to eq "Counted to 1 so far."
  end
  it "counts numbers passed so far" do
    counter = Counter.new
    counter.add(-2)
    result = counter.report
    expect(result).to eq "Counted to -2 so far."
  end
  it "counts numbers passed so far" do
    counter = Counter.new
    counter.add(6.7)
    result = counter.report
    expect(result).to eq "Counted to 6.7 so far."
  end 
end