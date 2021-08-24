require 'poker_hand_rank'

describe PokerHandRank do
  it 'returns true if the hand is a flush' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['2S', '5S', 'JS', '4S', '10S']
    expect(@poker_hand_rank.is_a_flush?(@hand)).to eq(true)
  end

  it 'returns false if the hand is not a flush' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['2S', '5S', 'JS', '4D', '10S']
    expect(@poker_hand_rank.is_a_flush?(@hand)).to eq(false)
  end

  it 'returns true if the hand is a straight' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '6D', '10S', '8H', '9S']
    expect(@poker_hand_rank.is_a_straight?(@hand)).to eq(true)
  end 

  it 'returns false if the hand is not a straight' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '6D', '2S', '8H', '9S']
    expect(@poker_hand_rank.is_a_straight?(@hand)).to eq(false)
  end

  it 'returns true if the hand is a straight flush' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '6S', '10S', '8S', '9S']
    expect(@poker_hand_rank.is_a_straight_flush?(@hand)).to eq(true)
  end

  it 'returns false if the hand is not a straight flush' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '6S', '10D', '8S', '9S']
    expect(@poker_hand_rank.is_a_straight_flush?(@hand)).to eq(false)
  end
end