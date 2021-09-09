feature 'view hit points' do
  scenario 'see Player 2 hit points' do
    visit("/")
    fill_in :player_1_name, with: "Lilly"
    fill_in :player_2_name, with: "Fred"
    click_button 'Submit'
    expect(page).to have_content "Fred: 60HP"
  end
end