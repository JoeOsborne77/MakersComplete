require 'gratitudes'

RSpec.describe Gratitudes do
  it "makes an array of gratitudes to print" do
    gratarray = Gratitudes.new
    gratarray.add("bourbon")
    gratarray.add("coffee")
    expect(gratarray.format).to eq "Be grateful for: bourbon, coffee"
  end
end

  
