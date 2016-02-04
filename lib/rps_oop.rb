class Game
  
  def how_many_games
    puts "\nHow many games do you have to win to win a set?"
    return gets.chomp.to_i
  end

  def best_of
    best = @games
    out_of = best + best - 1
    puts "Best #{best} out of #{out_of} it is!"
  end

  def get_player_one_weapon
    puts "\nPlayer 1, choose your weapon!"
    @player1_weapon = gets.chomp.downcase 
    return @player1_weapon
  end

  def get_player_two_weapon
    puts "\nPlayer 2, choose your weapon!"
    @player2_weapon = gets.chomp.downcase
    return @player2_weapon
  end

  def winner?
    if @player1_weapon == "rock" && @player2_weapon == "scissors"
      return 1
    elsif @player1_weapon == "paper" && @player2_weapon == "rock"
      return 1
    elsif @player1_weapon == "scissors" && @player2_weapon == "paper"
      return 1
    elsif @player2_weapon == "rock" && @player1_weapon == "scissors"
      return 2
    elsif @player2_weapon == "paper" && @player1_weapon == "rock"
      return 2
    elsif @player2_weapon == "scissors" && @player1_weapon == "paper"
      return 2
    elsif @player1_weapon == @player2_weapon
      return nil
    end
  end

  
  def display_winner
    if @winner == nil
      puts "No winner! Tie Game!"
    else
      puts "Player #{winner} wins the day!"
    end
  end

  def overall_winner?
    if @p1_wins > @p2_wins
      return 1
    elsif @p2_wins > @p1_wins
      return 2
    else
      return nil
    end
  end

  def display_overall_winner
    if @overall_winner == nil
      puts "No winner! Tied series!"
    elsif 
      puts "Player #{overall_winner} crushes their opponent!"
    end
  end

  def track_p1_wins
    if @winner == 1
      return 1
    else
      return 0
    end
  end

  def track_p2_wins
    if @winner == 2
      return 1
    else
      return 0
    end
  end

  def one_round
    @player1_weapon 
    @player2_weapon 
    return winner?
  end

  def main_game
    @p1_wins = 0
    @p2_wins = 0
    puts "Let's play Rock-Paper-Scissors!"
    @games = how_many_games
    best_of

    until @p1_wins == games || @p2_wins == games
      @winner = one_round
      display_winner
      @p1_wins += track_p1_wins
      @p2_wins += track_p2_wins
    end

    @overall_winner = overall_winner?
    display_overall_winner
  end

  def set_player_1(x)
    @player1_weapon = x
  end

  def set_player_2(x)
    @player2_weapon = x
  end
end
