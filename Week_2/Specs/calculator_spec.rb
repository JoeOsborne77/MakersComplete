require_relative "../lib/calculator.rb"

describe Calculator do
  describe "#add" do
    it "returns the sum of multiple numbers" do
      calculator = Calculator.new
      calculator.numbers(8)
      calculator.numbers(8)
      calculator.numbers(8)
      expect(calculator.add).to eq(24)
    end
  end

  describe "#subtract" do
    it "returns the value of multiple numbers subtracted from one another" do
      calculator = Calculator.new
      calculator.numbers(8)
      calculator.numbers(8)
      calculator.numbers(8)
      expect(calculator.subtract).to eq(-8)
    end
  end

  describe "#mutiply" do
    it "returns value of numbers multiplied by each other" do
      calculator = Calculator.new
      calculator.numbers(1)
      calculator.numbers(8)
      calculator.numbers(2)
      expect(calculator.multiply).to eq(16)
    end
  end

  describe "#divide" do
    it "returns value of numbers multiplied by each other" do
      calculator = Calculator.new
      calculator.numbers(16)
      calculator.numbers(8)
      calculator.numbers(2)
      expect(calculator.divide).to eq(1)
    end
  end
end