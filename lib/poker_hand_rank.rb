class PokerHandRank
  attr_accessor :result, :rank
  def initialize
    @result = ""
    @rank = 0
  end

  def rank_hand(hand)
    current_hand = replace_10(hand).join(" ")
    if current_hand.length < 14
      @result = "This is an invalid hand. A poker hand must contain 5 cards"
    elsif check_for_invalid_hand(current_hand) === false
      @result = "Invalid Poker Hand"
    elsif (is_a_flush(current_hand) && is_a_straight(current_hand) && highest_card_value(current_hand) === 14)
      @result = "Royal Flush / Straight Flush"
      @rank = 1
    elsif (is_a_flush(current_hand) && is_a_straight(current_hand))
      @result = "Straight Flush"
      @rank = 2
    elsif duplicates(current_hand).uniq[0] === 4
      @result = "Four of a Kind"
      @rank = 3
    elsif (duplicates(current_hand).uniq[0] === 3 && duplicates(current_hand).uniq[1] === 2)
      @result = "Full House"
      @rank = 4
    elsif is_a_flush(current_hand)
      @result = "Flush"
      @rank = 5
    elsif is_a_straight(current_hand)
      @result = "Straight"
      @rank = 6
    elsif duplicates(current_hand)[0] === 3
      @result = "Three of a Kind"
      @rank = 7
    elsif duplicates(current_hand).count(2) === 4
      @result = "Two Pair"
      @rank = 8
    elsif duplicates(current_hand).count(2) === 2
      @result = "One Pair"
      @rank = 9
    elsif current_hand.length < 5
      @result = "This is an invalid hand. A poker hand must contain 5 cards"
    else
      @result = "High Card"
      @rank = 10
    end
    @rank
    @result
  end

  def is_a_flush(current_hand)
    suites = card_suites(current_hand)
    suites[0] === suites[4]
  end

  def is_a_straight(current_hand)
    faces = card_faces(current_hand)
    faces.each_cons(2).all? { |first, second| second === first + 1 }
  end

  def duplicates(current_hand)
    @duplicates = []
    faces = card_faces(current_hand)
    faces.each do |face_value|
      @duplicates << faces.count(face_value)
    end
    @duplicates.sort.reverse
  end

  def split_cards(current_hand)
    current_hand.split(" ")
  end

  def card_faces(current_hand)
    @card_faces = []
    split_cards(current_hand).each do |card|
      @card_faces << convert_face_cards(card[0], current_hand)
    end
    return @card_faces.sort
  end

  def card_suites(current_hand)
    @card_suites = []
    split_cards(current_hand).each do |card|
      @card_suites << card[1]
    end
    return @card_suites.sort
  end

  def highest_card_value(current_hand)
    card_faces(current_hand).max
  end

  def replace_10(in_valid_hand)
    in_valid_hand.split(" ").map! do |card|
      card[0..1] === "10" ? "T" + card[2] : card
    end
  end

  def check_for_invalid_hand(current_hand)
    hand = current_hand.split(" ")
    hand.uniq.length === 5
  end

  def convert_face_cards(card, current_hand)
    if card === "T"
      card = 10
    elsif card === "J"
      card = 11
    elsif card === "Q"
      card = 12
    elsif card === "K"
      card = 13
    elsif card === "A"
      if current_hand.include? 'K' && 'Q' && 'J' && 'T'
        card = 14
      else
        card = 1
      end
    else
      card.to_i
    end
  end

end