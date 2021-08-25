class Poker 

  attr_accessor :hand

  def initialize(cards = Cards.new, hand_rank = PokerHandRank.new)
    @deck = cards.create_deck
  end

  def draw
    @deck.shuffle!
    @hand = []
    while @hand.length < 5 do
      card = @deck.sample
      check_for_duplicate_card(@deck, @hand, card)
    end
    @current_hand =  @hand.join(",").gsub(/\,/,' ')
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