feature 'Attack' do 
  scenario 'Attack player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Lilly attacked Fred'
  end
end