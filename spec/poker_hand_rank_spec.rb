require 'poker_hand_rank'

describe PokerHandRank do
  
  it 'returns the current hand in an array format' do
    @poker_hand_rank = PokerHandRank.new
    @hand = "AH KS TC 9D 3S"
    expect(@poker_hand_rank.split_cards(@hand)).to eq(["AH", "KS", "TC", "9D", "3S"])
  end

  it 'returns only card faces' do
    @poker_hand_rank = PokerHandRank.new
    @hand = "TH JS QC KD AS"
    expect(@poker_hand_rank.card_faces(@hand)).to eq([10, 11, 12, 13, 14])
  end

  it 'returns only card suites' do
    @poker_hand_rank = PokerHandRank.new
    @hand = "TH JS QC KD AS"
    expect(@poker_hand_rank.card_suites(@hand)).to eq(["C", "D", "H", "S", "S"])
  end

  it 'returns true when it is a flush' do
    @poker_hand_rank = PokerHandRank.new
    @hand = "TH JH QH KH AH"
    expect(@poker_hand_rank.is_a_flush(@hand)).to eq(true)
  end

  it 'returns true when it is a straight' do
    @poker_hand_rank = PokerHandRank.new
    @hand = "TH JH QC KH AH"
    expect(@poker_hand_rank.is_a_straight(@hand)).to eq(true)
  end

  it 'returns 3 for three of a kind of duplicate cards' do
    @poker_hand_rank = PokerHandRank.new
    @hand = "TH TH TC KH AC"
    expect(@poker_hand_rank.duplicates(@hand)[0]).to eq(3)
  end

  it 'returns 4 for four of a kind of duplicate cards' do
    @poker_hand_rank = PokerHandRank.new
    @hand = "TD TC TH KC TS"
    expect(@poker_hand_rank.duplicates(@hand)[0]).to eq(4)
  end

  it 'returns a straight flush' do
    @poker_hand_rank = PokerHandRank.new
    @hand = "TH JH QH KH 9H"
    expect(@poker_hand_rank.rank_hand(@hand)).to eq("Straight Flush")
  end

  it 'returns a four of a kind' do
    @poker_hand_rank = PokerHandRank.new
    @hand = "TH TD TS TC AH"
    expect(@poker_hand_rank.rank_hand(@hand)).to eq("Four of a Kind")
  end

  it 'returns a full house' do
    @poker_hand_rank = PokerHandRank.new
    @hand = "TH TD TS JC JH"
    expect(@poker_hand_rank.rank_hand(@hand)).to eq("Full House")
  end

  it 'returns a flush' do
    @poker_hand_rank = PokerHandRank.new
    @hand = "6H 3H TH 2H 7H"
    expect(@poker_hand_rank.rank_hand(@hand)).to eq("Flush")
  end

  it 'returns a straight' do
    @poker_hand_rank = PokerHandRank.new
    @hand = "6H 5D 9H 8H 7C"
    expect(@poker_hand_rank.rank_hand(@hand)).to eq("Straight")
  end

  it 'returns a three of a kind' do
    @poker_hand_rank = PokerHandRank.new
    @hand = "6H 6D 6C 8H 7C"
    expect(@poker_hand_rank.rank_hand(@hand)).to eq("Three of a Kind")
  end

  it 'returns a two pair' do
    @poker_hand_rank = PokerHandRank.new
    @hand = "6H 6D 7C 8H 7S"
    expect(@poker_hand_rank.rank_hand(@hand)).to eq("Two Pair")
  end

  it 'returns a pair' do
    @poker_hand_rank = PokerHandRank.new
    @hand = "6H 6D 7C 8H 9S"
    expect(@poker_hand_rank.rank_hand(@hand)).to eq("Pair")
  end

  it 'returns a royal flush' do
    @poker_hand_rank = PokerHandRank.new
    @hand = "TH JH QH KH AH"
    expect(@poker_hand_rank.rank_hand(@hand)).to eq("Royal Flush")
  end

end