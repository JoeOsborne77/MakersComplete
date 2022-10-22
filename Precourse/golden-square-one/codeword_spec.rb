require 'check_codeword'

RSpec.describe "check_codeword_method" do
  it "checks codeword matches" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end
  it "checks near misses" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope."
  end
  it "bounces wrong guesses" do
    expect(check_codeword("fish")).to eq "WRONG!"
  end
end
