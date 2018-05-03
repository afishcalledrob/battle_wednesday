def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Dave'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
end

def attack_and_return_to_game
  click_button("Attack")
  click_button("Return to game")
end
