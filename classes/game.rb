class Game
  
  def initialize

  end

  def start_game
    puts "----- NEW TURN -----"
    num1 = rand(20)
    num2 = rand(20)
    puts "Player 1: What does #{num1} plus #{num2} equal?"
    # puts "Player #{player.id}: What does #{num1} plus #{num2} equal?"
    user_input = gets.chomp

    puts user_input.to_i == (num1 + num2) ? "Player 1: YES! You are correct." : "Player 1: Seriously? No!"
    # puts user_input.to_i == (num1 + num2) ? "Player #{player.id}: YES! You are correct." : "Player #{player.id}: Seriously? No!"

    ## prints score
    puts "P1: 0/3 vs P2: 2/3"
    # puts "P1: #{lives}/3 vs P2: #{lives}/3"

  end

  def game_over
    # game_over sequence
    # When either player reaches lives = 0
    puts "Player 2 wins with a score of 2/3"
    # puts "Player #{player.id} wins with a score of #{lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end


end