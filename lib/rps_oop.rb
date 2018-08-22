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

  def how_won(weapon_p1, weapon_p2)
    if (@p1_weapon == "rock" && @p2_weapon == "paper") || (@p1_weapon == "paper" && @p2_weapon == "rock")
      return "pcr"
    elsif (@p1_weapon == "rock" && @p2_weapon == "scissors") || (@p1_weapon == "scissors" && @p2_weapon == "rock")
      return "rss"
    elsif (@p1_weapon == "paper" && @p2_weapon == "scissors") || (@p1_weapon == "scissors" && @p2_weapon == "paper")
      return "scp"
    else
      return nil
    end 
  end

  # Defines who won the simple game.
  # Returns an Integer 1, 2, or nil.
  def who_won(weapon_p1, weapon_p2)
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

  def display_how_won(hw, weapon_p1, weapon_p2)
    if hw == "pcr"
      return "Paper Covers Rock"
    elsif hw == "rss"
      return "Rock Smashes Scissors"
    elsif hw == "scp"
      return "Scissors Cut Paper"
    else hw == nil
      return "#{weapon_p1} equals #{weapon_p2}"
    end
  end

  def display_who_won(ww)
    if ww == 1
      return "Player 1 wins!"
    elsif ww == 2
      return "Player 2 wins!"
    else ww == nil
      return "It's a draw!"
    end
  end

  def game_win_count(ww)
    if ww == 1
      return @p1_game_win += 1
    elsif ww == 2
      return @p2_game_win += 1
    else ww == nil
      return nil
    end
  end

  def display_game_win_count(game_wins_p1, game_wins_p2)
    return "The Score is "

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










