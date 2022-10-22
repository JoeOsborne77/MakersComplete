require "check_codeword"

RSpec.describe "add check_codeword" do
  it "returns Correct! Come in." do 
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
    result = check_codeword("hoarse")
    expect(result).to eq "Close, but nope."
    result = check_codeword("dohnut")
    expect(result).to eq "WRONG!"
  end
end