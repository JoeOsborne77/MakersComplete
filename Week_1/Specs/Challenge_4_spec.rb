require_relative "../lib/challenge_4.rb"

RSpec.describe "checks text" do
  it "returns true if text starts with capital and ends with punctuation mark" do
    expect(sentence_checker("Makers is awesome.")).to eq true
  end
  it "returns true if text starts with capital and ends with punctuation mark" do
    expect(sentence_checker("Makers is awesome")).to eq false
  end
end