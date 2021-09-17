feature 'Reduce Player 2 hit points by 10' do
  scenario 'Player 2 will lose 10 hit points' do
    sign_in_and_play
    click_button 'ATTACK'
    expect(page).not_to have_content "Jigglypuff: 60HP"
    expect(page).to have_content "Jigglypuff: 50HP"
  end
end