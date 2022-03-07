class Game
  
  def initialize
    @current_player
    @game_over = false
    @player1
    @player2
  end

  def check_game_over
    if (@current_player.lives == 0)
      @game_over = true
    end
  end

  def player_initialize
    puts "Who is player one?: "
    player_name1 = gets.chomp
    @player1 = Player.new(player_name1)

    puts "Who is player two?: "
    player_name2 = gets.chomp
    @player2 = Player.new(player_name2)
  end

  def print_score 
    p1 = @current_player
    p2 = @current_player == @player1 ? @player2 : @player1 
    "#{p1.name}: #{p1.lives}/3 vs #{p2.name}: #{p2.lives}/3"
  end

  def start 
    player_initialize
    @current_player = @player1
      while (!@game_over)
        question = Questions.new()
        puts "#{@current_player.name}: #{question.generate_question}"  
        answer = gets.chomp.to_i
        
        if (question.check_answer(answer))
          puts "#{@current_player.name}: CORRECT!"
        else
          puts "#{@current_player.name}: WRONG!"
          @current_player.take_life
          check_game_over
        end    

        puts print_score 
        puts "---- NEW TURN ----" 
        @current_player = @current_player == @player1 ? @player2 : @player1    
      end 
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts "---- GAME OVER ----"
    puts "Good bye!"
  end
end