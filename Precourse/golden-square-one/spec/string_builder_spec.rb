require 'string_builder'

RSpec.describe StringBuilder do
  it "adds two strings together" do
    newstring = StringBuilder.new
    newstring.add("milk")
    expect(newstring.size).to eq 4
  end
  it "gives the output" do
    newstring = StringBuilder.new
    newstring.add("milk")
    expect(newstring.output).to eq "milk"
  end
end