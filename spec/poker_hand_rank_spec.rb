require 'poker_hand_rank'

describe PokerHandRank do
  it 'returns true if the hand is a straight' do
    @poker_hand_rank = PokerHandRank.new
    @hand = ['2S', '5S', 'JS', '4S', '10S']
    expect(@poker_hand_rank.is_a_flush?(@hand)).to eq(true)
  end
end