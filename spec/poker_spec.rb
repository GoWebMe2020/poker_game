require 'poker'

describe Poker do
  it 'is an instance of Poker' do
    @poker = Poker.new
    expect(@poker).to be_an_instance_of(Poker)
  end

end