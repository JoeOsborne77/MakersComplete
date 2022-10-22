require 'password_checker'

RSpec.describe PasswordChecker do
  it "Check password length and returns appropriate message" do
    newpwrd = PasswordChecker.new
    expect(newpwrd.check("abc123456")).to eq true
  end
  it "Check password length and returns appropriate message" do
    newpwrd = PasswordChecker.new
    expect{ newpwrd.check("abc") }.to raise_error "Invalid password, must be 8+ characters."
  end
end