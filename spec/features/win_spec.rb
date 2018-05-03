feature 'Winning' do
  scenario 'Player 1 wins' do
    sign_in_and_play
    10.times {attack_and_return_to_game}
    click_button("Attack")
    expect(page).to have_content("Dave Wins!")
  end
end
