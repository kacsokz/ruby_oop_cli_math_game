class Game
  
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @active_player = @player_one
  end

  def start_game
    ## new rounds will launch as long as both players have lives
    while @player_one.lives.positive? && @player_two.lives.positive?
      if @active_player == @player_one
        new_round(@player_one)
        @active_player = @player_two
      else
        new_round(@player_two)
        @active_player = @player_one
      end
    end
    ## game over sequence launches once the while loop is broken
    game_over
  end

  def new_round(player)
    puts "----- NEW ROUND -----"
    num1 = rand(20)
    num2 = rand(20)
    puts "Player #{player.id}: What does #{num1} plus #{num2} equal?"
    user_input = gets.chomp.to_i

    if user_input == (num1 + num2)
      puts "Player #{player.id}: YES! You are correct."
    else
      puts "Player #{player.id}: Seriously? No!"
      player.lives -= 1
    end

    puts "P1: #{@player_one.lives}/3 vs P2: #{@player_two.lives}/3"

  end

  def game_over
    player = @player_one.lives.zero? ? @player_two : @player_one
    puts "----- GAME OVER -----"
    puts "Player #{player.id} wins with a score of #{player.lives}/3"
  end

end