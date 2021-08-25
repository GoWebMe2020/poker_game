# Poker Game

## Technologies / Dependencies

- Ruby
- Sinatra
- Capybara
- RSpec

## User Stories

- Can create a deck of 52 playing cards.
- Can draw a hand of 5 cards.
- Checks that there are no duplicates in the hand.
- Check if hand is a flush.
- Check for a straight.
- Check for a stright flush.
- Check for a four of a kind.
- Check for three of a kind.
- Check for a pair.
- Check for a two pair.
- Checki for a full house.
- Check for a royal flush
- Return the rank of the hand.
- Randomly draw a 5 card poker hand or input results.
- Reset the game entirely.
- Check validity of the hand. Hand must have 5 cards and may not have duplicate cards.

## Tests

RSpec and Capybara Tests
................................

Finished in 0.36701 seconds (files took 3 seconds to load)
32 examples, 0 failures

### Given Tests

- 2H 2D 2C KC QD Three of a Kind
- 2H 5H 7D 8C 9S High Card
- AH 2D 3C 4C 5D Straight
- 2H 3H 2D 3C 3D Full House
- 2H 7H 2D 3C 3D Two Pair
- 2H 7H 7D 7C 7S Four of a Kind
- 10H JH QH KH AH Straight Flush
- 4H 4S KS 5D 10S One pair
- QC 10C 7C 6C QC Invalid hand
- JH QH KH Invalid hand

## Installation

- Clone this repo
- Change directory (cd) into the correct directory
- Run bundle install
- Run rspec to run tests
- Run rackup
- Open a browser window on http://localhost:9292/
- Play the game

## Credits

JP Ferreira
