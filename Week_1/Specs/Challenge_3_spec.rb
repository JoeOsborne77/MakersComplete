require_relative "../lib/challenge_3.rb"

RSpec.describe "calculate reading time" do
  it "divides the number of words by 200" do
  expect(calculate_reading_time(200)).to eq 1 #should pass
  end
  it "returns error message if string is given instead of integer" do
  expect(calculate_reading_time("Hi!")).to eq "Please enter a number"
  end
  it "returns error message if nil is given instead of integer" do
  expect(calculate_reading_time(nil)).to eq "Please enter a number"
  end
end