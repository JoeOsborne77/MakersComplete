require_relative "../lib/cat_fact.rb"

RSpec.describe CatFacts do 
  it "returns a cat fact" do
    fake_fact = double :requester
    cat_fact = CatFacts.new(fake_fact)
    expect(fake_fact).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"A form of AIDS exists in cats.","length":30}')
    expect(cat_fact.provide).to eq "Cat fact: A form of AIDS exists in cats."
  end
end