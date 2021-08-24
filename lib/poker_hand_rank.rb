class PokerHandRank

  def initialize
    @poker_hand_outcome = ''
  end

  def poker_hand_rank(current_hand)
    if is_a_straight_flush?(current_hand)
      @poker_hand_outcome = 'Straight Flush'
    elsif is_a_flush?(current_hand)
      @poker_hand_outcome = 'Flush'
    elsif is_a_straight?(current_hand)
      @poker_hand_outcome = 'Straight'
    elsif is_four_of_a_kind?(current_hand)
      @poker_hand_outcome = 'Four of a Kind'
    elsif is_three_of_a_kind?(current_hand)
      @poker_hand_outcome = 'Three of a Kind'
    elsif is_two_of_a_pair?(current_hand)
      @poker_hand_outcome = 'Two Pair'
    elsif is_a_pair?(current_hand)
      @poker_hand_outcome = 'A Pair'
    else
      @poker_hand_outcome = 'High Card'
    end
  end

  def is_a_flush?(current_hand)
    suites = current_hand.map { |card| card[-1] }
    return false if suites.uniq.length > 1
    true
  end

  def is_a_straight?(current_hand)
    card_values = current_hand.map { |card| card.size === 3 ? card[0..1].to_i : card[0].to_i }
    card_values.sort!.each_cons(2).all? {|first, second| second == first + 1}
  end
  
  def is_four_of_a_kind?(current_hand)
    card_values = current_hand.map { |card| card.size === 3 ? card[0..1].to_i : card[0].to_i }
    four_of_a_kind = card_values.detect{ |value| card_values.count(value) === 4}
    four_of_a_kind != nil
  end

  def is_three_of_a_kind?(current_hand)
    card_values = current_hand.map { |card| card.size === 3 ? card[0..1].to_i : card[0].to_i }
    three_of_a_kind = card_values.detect{ |value| card_values.count(value) === 3}
    three_of_a_kind != nil && !is_four_of_a_kind?(current_hand) ? true : false
  end

  def is_a_straight_flush?(current_hand)
    is_a_straight?(current_hand) && is_a_flush?(current_hand)
  end

  def is_two_of_a_pair?(current_hand)
    card_values = current_hand.map { |card| card.size === 3 ? card[0..1].to_i : card[0].to_i }
    card_values.uniq.length === 3
  end

  def is_a_pair?(current_hand)
    card_values = current_hand.map { |card| card.size === 3 ? card[0..1].to_i : card[0].to_i }
    card_values.uniq.length === 4
  end

end