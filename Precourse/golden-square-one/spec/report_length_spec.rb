require 'report_length'

RSpec.describe "length method" do
  it "measures string length" do
    expect(report_length("bob")).to eq "This string was 3 characters long."
  end
end