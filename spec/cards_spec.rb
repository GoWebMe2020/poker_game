require 'cards'

describe Cards do
  it 'can create a deck of 52 cards' do
    @cards = Cards.new
    @cards.create_deck
    expect(@cards.deck.length).to eq(52)
  end
end