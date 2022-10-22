require "report_length"

RSpec.describe "add report_length" do
  it "return amount of characters of string" do
    result = report_length("Tasty Wheat")
    expect(result).to eq "This string was 11 characters long."
  end
end