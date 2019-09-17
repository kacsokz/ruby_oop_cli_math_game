require "./classes/game"
require "./classes/player"

player_one = Player.new(1)
player_two = Player.new(2)
new_game = Game.new(player_one, player_two)
new_game.start_game