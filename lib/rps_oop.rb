# - p1_weapon
# - p2_weapon

# ask for players' weapons
# calculate how game was won or why game was draw
# caluculate winner or draw

require "pry"

class Game
  def run_game
    get_p1_weapon(ask_for_p1_weapon)
    get_p2_weapon(ask_for_p2_weapon)

    result_how_won = how_game_was_won
    result_winner = game_winner

    puts display_game_result_how_won(result_how_won, @p1_weapon, @p2_weapon)
    puts display_game_result_winner(result_winner)
  end

  def get_p1_weapon(x)
    @p1_weapon = x
  end

  def get_p2_weapon(x)
    @p2_weapon = x
  end

  def ask_for_p1_weapon
    puts "Player 1, unleash your weapon:"
    return gets.chomp
  end

  def ask_for_p2_weapon
    puts "Player 2, unleash your weapon:"
    return gets.chomp
  end

  def how_game_was_won
    if @p1_weapon == @p2_weapon
      return "draw"
    elsif (@p1_weapon == "rock" && @p2_weapon == "paper") || (@p1_weapon == "paper" && @p2_weapon == "rock")
      return "pcr"
    elsif (p1_weapon == "paper" && p2_weapon == "scissors") || (p1_weapon == "scissors" && p2_weapon == "paper")
      return "scp"
    else (p1_weapon == "scissors" && p2_weapon == "rock") || (p1_weapon == "rock" && p2_weapon == "scissors")
      return "rss"
    end
  end

  def game_winner
    if @p1_weapon == @p2_weapon
      return nil
    elsif @p1_weapon == "rock" && @p2_weapon == "scissors"
      return 1
    elsif @p1_weapon == "paper" && @p2_weapon == "rock"
      return 1
    elsif @p1_weapon == "scissors" && @p2_weapon == "paper"
      return 1
    elsif @p2_weapon == "rock" && @p1_weapon == "scissors"
      return 2
    elsif @p2_weapon == "paper" && @p1_weapon == "rock"
      return 2
    else @p2_weapon == "scissors" && @p1_weapon == "paper"
      return 2
    end
  end

  def display_game_result_how_won(w, @p1_weapon, @p2_weapon)
    if w == "draw"
      return "#{@p1_weapon} equals #{@p2_weapon}"
    elsif w == "pcr"
      return "Paper Covers Rock"
    elsif w == "scp"
      return "Scissors Cut Paper"
    else w == "rss"
      return "Rock Smashes Scissors"
    end
  end

  def display_game_result_winner(r)
    if r == nil
      return "It's a Draw"
    elsif r == 1
      return "Player 1 Wins!"
    else r == 2
      return "Player 2 Wins"
    end

  end
end