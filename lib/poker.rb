require_relative './cards.rb'
require_relative './poker_hand_rank.rb'
class Poker 

  attr_accessor :hand, :deck, :current_hand

  def initialize(cards = Cards.new, hand_rank = PokerHandRank.new)
    @deck = cards.create_deck
    @hand_rank = hand_rank
    @hand = []
  end

  def draw
    @deck.shuffle!
    
    while @hand.length < 5 do
      card = @deck.sample
      check_for_duplicate_card(@deck, @hand, card)
    end
    return @current_hand =  @hand.join(",").gsub(/\,/,' ')
  end

  def result(hand)
    @hand_rank.rank_hand(hand)
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