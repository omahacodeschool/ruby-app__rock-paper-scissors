class RockPaperScissors
  def initialize


  end
end


class Game

  # Sets weapons for both players.
  # Returns a Strings of weapon for each player.
  def set_weapons(weapon_p1, weapon_p2)
    @p1_weapon = weapon_p1
    @p2_weapon = weapon_p2
  end

  # Defines who won the simple game.
  # Returns an Integer 1, 2, or nil.
  def winner(weapon_p1, weapon_p2)
    if @p1_weapon == "rock" && @p2_weapon == "scissors"
      return 1
    elsif @p1_weapon == "paper" && @p2_weapon == "rock"
      return 1
    elsif @p1_weapon == "scissors" && @p2_weapon == "paper"
      return 1
    elsif @p2_weapon == "rock" && @p1_weapon == "scissors"
      return 2
    elsif @p2_weapon == "paper" && @p1_weapon == "rock"
      return 2
    elsif @p2_weapon == "scissors" && @p1_weapon == "paper"
      return 2  
    else @p1_weapon == @p2_weapon
      return nil
    end    
  end

  def game_winner_display
    if winner == 1
      return "Player 1 wins!"
    elsif winner == 2
      return "Player 2 wins!"
    else winner == nil
      return "It's a draw!"
    end
  end

  def game_winner_count
    if winner == 1
      return @p1_game_win += 1
    elsif winner == 2
      return @p2_game_win += 1
    else winner == nil
      return nil
    end
  end

end


class Set

  def winner
    if p1_game_win == 3
      return 1
    else p2_game_win == 3
      return 2
    end
  end

  def set_win_count
    if 
  end

end


class Match

  def winner
    if p1_set_win == 3
      return 1
    else p2_set_win == 3
      return 2
    end
  end

end










