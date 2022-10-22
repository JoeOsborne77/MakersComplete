require "string_builder"

RSpec.describe StringBuilder do
  it "add strings together and returns as one" do
  stringbuilder = StringBuilder.new
  stringbuilder.add("John")
  expect(stringbuilder.output).to eq "John"
end
  it "It returns the amount of characters in said string" do
  stringbuilder = StringBuilder.new
  stringbuilder.add("John")
  expect(stringbuilder.size).to eq 4
end
end