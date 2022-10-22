require "gratitudes"

RSpec.describe Gratitudes do
  it "gives an array / list of gratitudes" do
  gratitudes = Gratitudes.new
  gratitudes.add("pizza")
  gratitudes.add("golf")
  gratitudes.add("burger")
  expect(gratitudes.format). to eq "Be grateful for: pizza, golf, burger"
  end
end  