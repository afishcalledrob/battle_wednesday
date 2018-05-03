class Game
attr_reader :player_1, :player_2, :counter
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @counter = 1
  end

  def self.game_start(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.game
    @game
  end

  def attack
    if @counter.odd?
     @player_2.receive_damage
     @counter += 1
   else
     @player_1.receive_damage
     @counter += 1
   end
  end


end
