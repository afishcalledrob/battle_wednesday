feature 'When player 1 attacks player 2' do
  scenario 'reduces health by 10' do
    sign_in_and_play
    click_button("Attack")
    click_button("Return to game")
    expect(page).to have_content "Dave: 60HP, Mittens: 50HP"
  end
end
