feature 'Attack' do 
  scenario 'Attack player 2' do
    sign_in_and_play
    click_button 'ATTACK'
    expect(page).to have_content 'Pikachu attacked Jigglypuff'
  end
end