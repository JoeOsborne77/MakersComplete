require "greet"

RSpec.describe "adds greet method" do
  it "says hello #{name}" do
    result = greet("Tom")
    expect(result).to eq "Hello, Tom!"
  end
end
