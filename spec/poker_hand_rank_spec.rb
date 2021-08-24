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

  it 'returns true if the hand is a four of a kind' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '7D', '7H', '7C', '9S']
    expect(@poker_hand_rank.is_four_of_a_kind?(@hand)).to eq(true)
  end

  it 'returns false if the hand is not a four of a kind' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '7D', '5H', '7C', '9S']
    expect(@poker_hand_rank.is_four_of_a_kind?(@hand)).to eq(false)
  end

  it 'returns true if the hand is a three of a kind' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '7D', '5H', '7C', '9S']
    expect(@poker_hand_rank.is_three_of_a_kind?(@hand)).to eq(true)
  end

  it 'returns false if the hand is not a three of a kind' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '7D', '7H', '7C', '9S']
    expect(@poker_hand_rank.is_three_of_a_kind?(@hand)).to eq(false)
  end

  it 'returns true if the hand is a pair' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '7D', '5H', '4C', '9S']
    expect(@poker_hand_rank.is_a_pair?(@hand)).to eq(true)
  end

  it 'returns false if the hand is not a pair' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '7D', '7H', '4C', '9S']
    expect(@poker_hand_rank.is_a_pair?(@hand)).to eq(false)
  end

  it 'returns true if the hand is a two pair' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '7D', '10H', '10C', '9S']
    expect(@poker_hand_rank.is_two_of_a_pair?(@hand)).to eq(true)
  end

  it 'returns false if the hand is a not two pair' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '7D', '10H', '8C', '9S']
    expect(@poker_hand_rank.is_two_of_a_pair?(@hand)).to eq(false)
  end
end