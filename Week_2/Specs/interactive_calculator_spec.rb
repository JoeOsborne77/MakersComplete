require_relative "../lib/interactive_calculator.rb"

RSpec.describe InteractiveCalculator do
  it "subtracts one number from another" do
    io = double :io 
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.")
    expect(io).to receive(:puts).with("Please enter a number")
    expect(io).to receive(:gets).and_return(5)
    expect(io).to receive(:puts).with("Please enter another number")
    expect(io).to receive(:gets).and_return(3)
    expect(io).to receive(:puts).with("Here is your result:")
    expect(io).to receive(:puts).with("5 - 3 = 2") # << interpolate?


    interactive_calculator = InteractiveCalculator.new(io)
    interactive_calculator.run
  end
end