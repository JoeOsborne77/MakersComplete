require "Challenge_1"

RSpec.describe "returns first five words of string" do
  it "returns first five words of string plus ... if string is > 5" do
  expect(make_snippet("Joseph Osborne Is A Big Fat Loser")).to eq "Joseph Osborne Is A Big..."
  end
  it "returns first five words of string plus ... if string is > 5" do
  expect(make_snippet("Joseph Osborne Is A Big")).to eq "Joseph Osborne Is A Big..."
  end
  it "returns first five or less words of string if total is 5 or less" do
  expect(make_snippet("I know RSpec.")).to eq "I know RSpec."
  end
end