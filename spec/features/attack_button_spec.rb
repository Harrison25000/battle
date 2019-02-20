feature "Attack button" do
  scenario "player 2 gets attacked" do
    sign_in_and_play
    click_button 'ATTACK!'
    expect(page).to have_content("Player 2 was attacked!")
  end
end
