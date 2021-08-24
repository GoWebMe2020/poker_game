class Poker 

  attr_accessor :hand

  def initialize(cards = Cards.new)
    @deck = cards.create_deck
    @hand = []
  end

  def draw
    @deck.shuffle!
    while @hand.length < 5 do
      card = @deck.sample
      check_for_duplicate_card(@deck, @hand, card)
    end
    @hand
  end

  def is_a_flush?(current_hand)
    suites = current_hand.map { |card| card[-1] }
    return false if suites.uniq.length > 1
    true
  end

  private

  def check_for_duplicate_card(poker_deck, poker_hand, random_card)
    if poker_hand.include? random_card
      random_card = poker_deck.sample
    else
      poker_hand << random_card
    end
  end

end