require 'challenge2'

RSpec.describe "challenge2 method" do
  it "returns str" do
    expect(count_words("Tasty Wheat, Tuna Fish")).to eq 4
  end
end