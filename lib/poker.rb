class Poker 
  attr_accessor :deck
  def initialize
    @deck = []
    @cards = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']
    @suites = ['H','D', 'C', 'S']
  end

  def create_deck
    @cards.each do |value|
      @suites.each do |suite|
        @deck.push(value + suite)
      end
    end
    return @deck
  end
end