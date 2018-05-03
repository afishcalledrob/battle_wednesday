require 'player'

describe Player do
 it 'should respond to "name" ' do
   player = Player.new("John")
   expect(player.name).to eq("John")
 end
end
