class PokerHandRank
  def initialize
    @rank = ""
  end

  def rank_hand(current_hand)
    if (is_a_flush(current_hand) && is_a_straight(current_hand) && highest_card_value(current_hand) === 14)
      @rank = "Royal Flush"
    elsif (is_a_flush(current_hand) && is_a_straight(current_hand))
      @rank = "Straight Flush"
    elsif duplicates(current_hand).uniq[0] === 4
      @rank = "Four of a Kind"
    elsif (duplicates(current_hand).uniq[0] === 3 && duplicates(current_hand).uniq[1] === 2)
      @rank = "Full House"
    elsif is_a_flush(current_hand)
      @rank = "Flush"
    elsif is_a_straight(current_hand)
      @rank = "Straight"
    elsif duplicates(current_hand)[0] === 3
      @rank = "Three of a Kind"
    elsif duplicates(current_hand).count(2) === 4
      @rank = "Two Pair"
    elsif duplicates(current_hand).count(2) === 2
      @rank = "Pair"
    else
      @rank = "High Card"
    end
    p @rank
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
      @card_faces << convert_face_cards(card[0])
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

  def convert_face_cards(card)
    if card === "T"
      card = 10
    elsif card === "J"
      card = 11
    elsif card === "Q"
      card = 12
    elsif card === "K"
      card = 13
    elsif card === "A"
      card = 14
    else
      card.to_i
    end
  end



end