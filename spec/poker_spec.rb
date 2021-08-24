require 'poker'

describe Poker do
  it 'is an instance of Poker' do
    @poker = Poker.new
    expect(@poker).to be_an_instance_of(Poker)
  end

  it 'can create a deck of 52 cards' do
    @poker = Poker.new
    @poker.create_deck
    expect(@poker.deck.length).to eq(52)
  end
end