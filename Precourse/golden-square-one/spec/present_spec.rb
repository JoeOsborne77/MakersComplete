require "present"

RSpec.describe Present do
  it "returns message depending if @contents is nil" do
  prezzie = Present.new
  prezzie.wrap("beer")
  expect { prezzie.wrap("toast") }.to raise_error "A contents has already been wrapped."
  end
  it "returns message depending if @contents is nil" do
  prezzie = Present.new
  expect { prezzie.unwrap }.to raise_error "No contents have been wrapped."
  end
end