class PokerHandRank

  def is_a_flush?(current_hand)
    suites = current_hand.map { |card| card[-1] }
    return false if suites.uniq.length > 1
    true
  end

  def is_a_straight?(current_hand)
    card_values = current_hand.map { |card| card.size === 3 ? card[0..1].to_i : card[0].to_i }
    card_values.sort!.each_cons(2).all? {|first, second| second == first + 1}
  end

  def is_a_straight_flush?(current_hand)
    is_a_straight?(current_hand) && is_a_flush?(current_hand)
  end

end