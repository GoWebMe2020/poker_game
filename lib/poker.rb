class Poker 

  attr_accessor :hand
  
  def initialize(cards = Cards.new)
    @deck = cards.create_deck
    @hand = []
  end

  def draw
    @deck.shuffle!
    while @hand.length < 5 do
      @hand << @deck.sample
    end
    @hand
  end

end