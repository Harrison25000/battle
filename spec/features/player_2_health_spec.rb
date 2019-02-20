feature 'Health' do
  scenario 'Shows player_2s health' do
    sign_in_and_play
    # visit('/')
    # fill_in :player_1_name, with: 'Clare'
    # fill_in :player_2_name, with: 'Ollie'
    # click_button 'Submit'
    #expect(@player_2_health).to equal("100hp")
    expect(page).to have_content("Player 2 health: 100hp")

  end
end
