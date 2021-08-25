feature 'Testing whether the correct result is displayed' do

  scenario 'visiting the home page' do
    visit('/')
    fill_in 'current_hand', with: '2H 2D 2C KC QD'
    click_on 'Submit Hand'
    expect(page).to have_content "Three of a Kind"
  end

  scenario 'visiting the home page' do
    visit('/')
    fill_in 'current_hand', with: '2H 5H 7D 8C 9S'
    click_on 'Submit Hand'
    expect(page).to have_content "High Card"
  end

  scenario 'visiting the home page' do
    visit('/')
    fill_in 'current_hand', with: 'AH 2D 3C 4C 5D'
    click_on 'Submit Hand'
    expect(page).to have_content "Straight"
  end

  scenario 'visiting the home page' do
    visit('/')
    fill_in 'current_hand', with: '2H 3H 2D 3C 3D'
    click_on 'Submit Hand'
    expect(page).to have_content "Full House"
  end

  scenario 'visiting the home page' do
    visit('/')
    fill_in 'current_hand', with: '2H 7H 2D 3C 3D'
    click_on 'Submit Hand'
    expect(page).to have_content "Two Pair"
  end

  scenario 'visiting the home page' do
    visit('/')
    fill_in 'current_hand', with: '2H 7H 7D 7C 7S'
    click_on 'Submit Hand'
    expect(page).to have_content "Four of a Kind"
  end

  scenario 'visiting the home page' do
    visit('/')
    fill_in 'current_hand', with: '10H JH QH KH AH'
    click_on 'Submit Hand'
    expect(page).to have_content "Straight Flush"
  end

  scenario 'visiting the home page' do
    visit('/')
    fill_in 'current_hand', with: '4H 4S KS 5D 10S'
    click_on 'Submit Hand'
    expect(page).to have_content "One Pair"
  end

  scenario 'visiting the home page' do
    visit('/')
    fill_in 'current_hand', with: 'QC 10C 7C 6C QC'
    click_on 'Submit Hand'
    expect(page).to have_content "Invalid Poker Hand"
  end

  scenario 'visiting the home page' do
    visit('/')
    fill_in 'current_hand', with: 'JH QH KH'
    click_on 'Submit Hand'
    expect(page).to have_content "This is an invalid hand. A poker hand must contain 5 cards"
  end

end