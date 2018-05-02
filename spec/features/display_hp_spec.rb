feature 'HP display' do
  scenario 'visibility of HP' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content "Dave: 60HP, Mittens: 60HP"
  end
end
