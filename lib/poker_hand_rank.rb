class PokerHandRank

  def is_a_flush?(current_hand)
    suites = current_hand.map { |card| card[-1] }
    return false if suites.uniq.length > 1
    true
  end

end