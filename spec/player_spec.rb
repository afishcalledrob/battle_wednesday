require 'player'

describe Player do
  subject(:player) { Player.new("John") }
 it 'should respond to "name" ' do
   expect(player.name).to eq("John")
 end

 describe '#HP' do
   it 'equals default health points' do
     expect(player.hp).to eq Player::DEFAULT_HP
   end

describe '#receive_damage' do
  it 'reduces health by standard amount' do
    expect{player.receive_damage}.to change{player.hp}.by(-10)
  end
end
 end
end
