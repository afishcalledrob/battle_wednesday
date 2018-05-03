require 'game'

describe Game do
 let(:p1) {double :player, receive_damage: true}
 let(:p2) {double :player, receive_damage: true}
 subject(:game) {Game.new(p1, p2)}

 it 'responds to method player_1' do
   expect(game.player_1).to eq(p1)
 end

 it 'responds to method player_2' do
   expect(game.player_2).to eq(p2)
 end
  describe '#attack' do
    it 'responds to attack method' do
      expect(game).to respond_to(:attack)
    end

    it 'expects player_2 to be attacked' do
      expect(p2).to receive(:receive_damage)
      game.attack
    end

    it 'expects player_q to be attacked' do
      game.attack
      expect(p1).to receive(:receive_damage)
      game.attack
    end
  end

  describe 'counter' do
    it 'should default to 1' do
      expect(game.counter).to eq(1)
    end

    it 'when attack counter should equal 2' do
      game.attack
      expect(game.counter).to eq(2)
    end

    it 'when attacked twice counter should equal 3' do
      game.attack
      game.attack
      expect(game.counter).to eq(3)
    end
  end


end
