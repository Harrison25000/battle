feature 'Names' do
  scenario 'Submitting Names' do
    sign_in_and_play
    # visit('/')
    # fill_in :player_1_name, with: 'Clare'
    # fill_in :player_2_name, with: 'Ollie'
    # click_button 'Submit'
    expect(page).to have_content 'Clare vs. Ollie'
  end
end
