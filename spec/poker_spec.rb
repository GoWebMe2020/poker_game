require 'poker'

describe Poker do
  it 'is an instance of Poker' do
    @poker = Poker.new
    expect(@poker).to be_an_instance_of(Poker)
  end

  it 'can draw a hand of 5 cards from the deck' do
    @poker = Poker.new
    @poker.draw
    expect(@poker.hand.length).to eq(5)
  end

  it 'can determine if there are duplicate cards' do
    @poker = Poker.new
    @poker.draw
    expect(@poker.hand.uniq.length).to eq(5)
  end

end