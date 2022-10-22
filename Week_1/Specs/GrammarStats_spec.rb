require_relative "../lib/grammarstats.rb"

RSpec.describe GrammarStats do
  describe "check method" do
    it "returns true if #text begins with capital and ends with punctation mark (!.?)" do
     text = GrammarStats.new
     expect(text.check("Hello!")).to eq true 
    end
  
    it "returns false if #text does not begin with a capital and does not end with punctation mark (!.?)" do
      text = GrammarStats.new
      expect(text.check("hello")).to eq false 
    end

    it "fails" do
      text = GrammarStats.new
      expect{ text.check("") }.to raise_error "No text given!!"
    end
  end
  
  describe "percentage_good method" do
    it "returns the percentage of the texts passed" do
      text = GrammarStats.new
      text.check("Hello, makers.")
      text.check("Hello, makers")
      expect(text.percentage_good).to eq 50
    end
  end
end 