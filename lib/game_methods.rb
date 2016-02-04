class Game

  # Defines the set counters to track sets
  def setup
    @p1_wins = 0
    @p2_wins = 0
  end

  def req_set_num
    gets.chomp.to_i
  end

  # Defines the number of sets to be in a match
  #
  # User entered integer
  #
  # Returns integer and calls it @match
  def get_number_sets
    puts "Enter the number of sets you would like to play"
    determine_sets(req_set_num)
  end

  def determine_sets(i)
    @match = i.to_i
  end

  # Defines when weapon is misspelled by player 1
  #
  # @player_1_weapon, @player_2_weapon - A string of anything other than "rock","paper", or "scissors"
  # Returns True or False
  def p1_misspelled_weapon
    (@player_1_weapon == "paper") || (@player_1_weapon == "rock") || (@player_1_weapon == "scissors")
  end

  # Defines when weapon is misspelled by player 2
  #
  # @player_1_weapon, @player_2_weapon - A string of anything other than "rock","paper", or "scissors"
  # Returns True or False
  def p2_misspelled_weapon
    (@player_2_weapon == "paper") || (@player_2_weapon == "rock") || (@player_2_weapon == "scissors")
  end


  # Defines misspelled word as new word
  #
  # user entry
  #
  # returns string
  def respell_weapon_text
    puts "Make sure you spelled that right and try again"
    gets.chomp
  end


  # Combines methods to define player 1's weapon and make sure its spelled correctly
  #
  # user entry
  #
  # return string
  def weapon_for_player_1
    puts "Choose your weapon, Player 1"
    set_weap_player_1(req_weap_player_1)

      until p1_misspelled_weapon
        @player_1_weapon = respell_weapon_text
      end
  end

  # Requests weapon from player 1
  #
  # input string
  #
  # Returns string
  def req_weap_player_1
    gets.chomp.downcase
  end

  # Requests weapon from player 2
  #
  # input string
  #
  # Returns string
  def req_weap_player_2
    gets.chomp.downcase
  end


  # Defines player 1 weapon as whatever is passed in
  #
  # string
  #
  # return string
  def set_weap_player_1(str)
    @player_1_weapon = str
  end


  # Defines player 2 weapon as whatever is passed in
  #
  # string
  #
  # return string
  def set_weap_player_2(str)
    @player_2_weapon = str
  end


  # Combines methods to define player 1's weapon and make sure its spelled correctly
  #
  # user entry
  #
  # return string
  def weapon_for_player_2
    puts "Choose your weapon, Player 2"
    set_weap_player_2(req_weap_player_2)

      until p2_misspelled_weapon
        @player_2_weapon = respell_weapon_text
      end
  end


  # defines how many sets have been played
  #
  # player 1 wins + player 2 wins
  #
  # returns integer
  def game_in_progress
    @p1_wins + @p2_wins != @match
  end 


  # Defines a tie set
  #
  # @player_1_weapon, @player_2_weapon - A string of either "rock","paper", or "scissors"
  #
  # Returns True or False
  def tie_set
    @player_1_weapon == @player_2_weapon
  end


  # Displays tie set text
  def tie_set_text
    puts "Tie set. No points awarded. Stop favoring rock!"
  end


  # Defines a win by Player 1 with paper weapon
  #
  # @player_1_weapon, @player_2_weapon - A string of either "rock","paper", or "scissors"
  #
  # Returns either true or false
  def player_1_wins_with_paper
    @player_1_weapon == "paper" && @player_2_weapon != "scissors"
  end


  # Defines set counter increase by 1 after a point is scored. Displays win.
  #
  #Player 1's number of set wins
  #
  #returns integer
  def give_p1_point
    puts "Player 1 Wins!!!"
    @p1_wins += 1
  end

  
  # Defines a win by Player 1 with scissors weapon
  #
  # @player_1_weapon, @player_2_weapon - A string of either "rock","paper", or "scissors"
  #
  # Returns either true or false
  def player_1_wins_with_scissors
    @player_1_weapon == "scissors" && @player_2_weapon != "rock"
  end


  # Defines a win by Player 1 with rock weapon
  #
  # @player_1_weapon, @player_2_weapon - A string of either "rock","paper", or "scissors"
  #
  # Returns either true or false
  def player_1_wins_with_rock
    @player_1_weapon == "rock" && @player_2_weapon != "paper"
  end


  # Defines set counter increase by 1 after a point is scored. Displays win.
  #
  #Player 2's number of set wins
  #
  #returns integer
  def give_p2_point
    puts "Player 2 Wins!!!"
    @p2_wins += 1
  end


  # Displays an updated score
  #
  #Player 1 and Player 2s number of set wins
  #
  #Puts current score
  def score_update
    puts "The score is Player 1 with #{@p1_wins} points to Player 2 with #{@p2_wins} points"
  end


  # Plays the game
  #
  # Compare weapons and display updated score
  #
  # Puts string
  def play_game
    while game_in_progress #while set num is not equal to set counters combined

        weapon_for_player_1 #ask for player 1's weapon and spell check
        weapon_for_player_2 #ask for player 2's weapon and spell check

          if tie_set 
            tie_set_text

          elsif player_1_wins_with_paper
            give_p1_point

          elsif player_1_wins_with_scissors
            give_p1_point

          elsif player_1_wins_with_rock
            give_p1_point

          else
            give_p2_point
          end

        score_update
      end  
  end


  # Defines a tied match
  #
  #Player 1 and Player 2s number of set wins
  #
  #Returns True or False
  def tie_match
    @p1_wins == @p2_wins
  end


  # Displays tie match text
  def tie_match_text
    puts "It's a tie ballgame folks!!!"
  end


  # Defines a winning match
  #
  #Player 1 and Player 2s number of set wins
  #
  #Returns True or False
  def winning_match
    @p1_wins != @p2_wins
  end


  # Defines the match winner
  #
  # Player 1 and Player 2 number of set wins
  def player_with_highest_score
    players_points={}
    players_points["Player 1"] = @p1_wins
    players_points["Player 2"] = @p2_wins
    highest_score = players_points.values.max
    player_with_highest_score = players_points.select {|k,v|v == highest_score}.keys
  end


  # Displays winning match player text
  def match_winner_text
    puts player_with_highest_score.join.upcase + " WINS,!!!"
  end


  # Defines if a match is tied or not and displays winner
  #
  # Returns string
  def who_won
    if tie_match
      tie_match_text

    elsif winning_match
     match_winner_text
    end
  end




































































end