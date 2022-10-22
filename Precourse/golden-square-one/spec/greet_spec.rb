require "greet.rb"

RSpec.describe "greet_method" do
  it "returns greeting with passed name" do
    result = greet("Joe")
    expect(result).to eq "Hello, Joe!"
  end
end 
