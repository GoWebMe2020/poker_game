require 'poker_hand_rank'

describe PokerHandRank do
    it 'returns a flush' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['2S', '5S', 'JS', '4S', '10S']
    expect(@poker_hand_rank.poker_hand_rank(@hand)).to eq('Flush')
  end

  it 'returns a straight' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '6D', '10S', '8H', '9S']
    expect(@poker_hand_rank.poker_hand_rank(@hand)).to eq('Straight')
  end

  it 'returns a four of a kind' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '7D', '7H', '7C', '9S']
    expect(@poker_hand_rank.poker_hand_rank(@hand)).to eq('Four of a Kind')
  end

  it 'returns a three of a kind' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '7D', '7H', '3C', '9S']
    expect(@poker_hand_rank.poker_hand_rank(@hand)).to eq('Three of a Kind')
  end

  it 'returns a straight flush' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '6S', '10S', '8S', '9S']
    expect(@poker_hand_rank.poker_hand_rank(@hand)).to eq('Straight Flush')
  end

  it 'returns a two pair' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '7D', '10H', '10C', '9S']
    expect(@poker_hand_rank.poker_hand_rank(@hand)).to eq('Two Pair')
  end

  it 'returns a pair' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '7D', '10H', '3C', '9S']
    expect(@poker_hand_rank.poker_hand_rank(@hand)).to eq('A Pair')
  end

  it 'returns a full house' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['7S', '7D', '7H', '6C', '6S']
    expect(@poker_hand_rank.poker_hand_rank(@hand)).to eq('Full House')
  end

  it 'returns a straight' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['10S', 'QD', 'JH', 'AC', 'KS']
    expect(@poker_hand_rank.poker_hand_rank(@hand)).to eq('Straight')
  end
end