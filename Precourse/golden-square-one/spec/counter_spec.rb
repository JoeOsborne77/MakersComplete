require 'counter'

RSpec.describe Counter do
  it "Counter returns total value" do
    counter = Counter.new
    counter.add(2)
    expect(counter.report).to eq "Counted to 2 so far."
  end
end