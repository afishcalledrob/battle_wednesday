require 'game'

describe Game do
 let(:p1) {double :player}
 let(:p2) {double :player}
 subject(:game) {Game.new(p1, p2)}

 it 'responds to method player_1' do
   expect(game.player_1).to eq(p1)
 end

 it 'responds to method player_2' do
   expect(game.player_2).to eq(p2)
 end
  describe '#attack' do
    it 'responds to attack method' do
      expect(game).to respond_to(:attack).with(1).argument
    end

    it 'should cause argument to recieve method recieve_damage' do
      expect(p1).to receive(:receive_damage)
      game.attack(p1)
    end
  end


end
