require_relative "../lib/challenge_5.rb"

RSpec.describe "checks string for TODO" do
  it "returns false if string does not contain TODO" do
  expect(text_checker("Hello my name is Joe")).to eq false
  end
  it "returns true if string contains TODO" do
  expect(text_checker("Hell my name is Joe and I have an extensive TODO list.")).to eq true
  end
end

#red green amber
# fail pass refactor