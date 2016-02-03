
class Game

  # Ask how many games the players want to play
  # Determine number that any player's score must exceed to be named 
  #'best of' game winner
  #
  # Return number of set wins to exceed for 'best of' game win

  def number_needed_to_win_set
  puts "How many games do you want in your set?"
  return gets.chomp.to_i/2
  end

  # Get Player 1's name, say hello to him/her
  #
  # Return Player 1's name

  def meet_player_1
  puts "Player 1, please enter your name:"
    player_1_name = gets.chomp
    puts "Hello, #{player_1_name}!"
    return player_1_name
  end

  # Get Player 2's name, say hello to him/her
  #
  # Return Player 2's name

  def meet_player_2
  puts "Player 2, please enter your name:"
    player_2_name = gets.chomp
    puts "Hello, #{player_2_name}!"
    return player_2_name
  end

  # Get and store the number of sets needed to exceed to win
  # Get and store player names
  # Initialize scoreboard and set count to 0
  #
  # Returns beginning set number 0

  def set_up_game
    @win_number = number_needed_to_win_set
    @player_1_name = meet_player_1
    @player_2_name = meet_player_2
    @player_1_score = 0
    @player_2_score = 0
    @set_number = 0
  end

  # Ask for Player 1's weapon
  #
  # returns Player 1 weapon choice

  def get_player_1_weapon
    puts "Player 1, enter your move:"
    return gets.chomp.downcase
  end

  # Ask for Player 2's weapon
  #
  # returns Player 2 weapon choice

  def get_player_2_weapon
    puts "Player 2, enter your move:"
    return gets.chomp.downcase
  end

  # Run set 
  #
  #Return winner player number or 0 if tie

  def set_winner(p1_weapon, p2_weapon)
    
    if p1_weapon == p2_weapon
        return 0
    end

    if p1_weapon == 'paper'
      if p2_weapon == 'rock'
        return 1
      end
      if p2_weapon == 'scissors'
        return 2
      end

    elsif p1_weapon == 'scissors'
      if p2_weapon == 'rock'
        return 2
      end
      if p2_weapon == 'paper'
        return 1
      end

    elsif p1_weapon == 'rock'
      if p2_weapon == 'paper'
        return 2
      end
      if p2_weapon == 'scissors'
        return 1
      end
    end
  end

  # Add score of set to scoreboard
  #
  # Returns set winner's new score

  def add_win_to_score(winner)
    if winner == 1
      @player_1_score += 1
    elsif winner == 2
      @player_2_score += 1
    end
  end

  # Tell winner he/she has won
  #
  # Returns nil

  def alert_winner(winner)
    if winner == 0
      puts "That's a draw!"
    elsif winner == 1
      puts "Player 1 wins set number #{@set_number}!"
    elsif winner == 2
      puts "Player 2 wins set number #{@set_number}!"
    end
  end

  #Run through all the sets required for a game
  #
  #Returns a report with the set number that just ended and each player's score

  def run_game
    until @player_1_score > @win_number || @player_2_score > @win_number
      @set_number += 1
      puts "Okay, it's set number: #{@set_number}."
      set_winner = set_winner(get_player_1_weapon, get_player_2_weapon)
      add_win_to_score(set_winner)
      alert_winner(set_winner)
    end
    return "\nEnd of set number #{@set_number}.\nThe current score is:\nPlayer 1: #{@player_1_score}\nPlayer 2: #{@player_2_score}\n\n\n"
  end


  # Determine 'best of' game winner (winner winner chicken dinner)
  #
  #Returns name of winner

  def game_winner
    if @player_1_score > @player_2_score
      return @player_1_name
    elsif @player_2_score > @player_1_score
      return @player_2_name
    end
  end
end