class RPS_Game
    #Runs RPS game
    #
    #@i - state for while loop. While loop runs as many times as assigned by "rounds".
    #
    #rounds - Number many rounds player decides to play. 
    #
    #answer - Answer to whether or not user wants to play (Y or N)
    #
    #@player1_score - initially set at 0. Increases by 1 each time player 1 wins one match.
    #
    #@player2_score - initially set at 0. Increases by 1 each time player 2 wins one match.
    def run_game
    @i = 0
    @player1_score = 0
    @player2_score = 0

    answer = want_to_play?

    if answer == "N"
        response_if_no
    else 
        rounds = yes_or_no(answer)
        start_game_message(rounds)

        until @i == rounds.to_i || (@player1_score != @player2_score && @i > (rounds.to_i / 2))
        
            @p1_weapon = player1_choose?.upcase
            @p2_weapon = player2_choose?.upcase
            display_game_result
            @i += 1

            if winning_weapon == 1
                @player1_score += 1
            elsif winning_weapon == 2
                @player2_score += 1
            end
        end
    the_winner = who_won_all_rounds?
    display_who_won_all_rounds(the_winner)
    end

    end

    #Used for testing purposes
    #
    #takes in two arguments (p1 and p2) and assigns them to @p1_weapon and @p2_weapon
    #
    def set_weapons(p1, p2)
        @p1_weapon = p1
        @p2_weapon = p2
    end

    # Displays message to user asking if they would like to play
    #
    #User's answer "Y" or "N" is captured with gets.chomp
    #
    #Returns string captured by gets.chomp
    def want_to_play?
      puts "Hello! Would you like to play a few games of Rock, Paper, Scissors? (type 'Y' or 'N')"
      gets.chomp.upcase
    end

    #Determines if answer is 'Y' or 'N' and provides response based on answer.
    #
    #answer - the response from user (either 'Y' or 'N')
    #
    # If user answer is 'Y', message is displayed asking user how many rounds they would like to play. 
    #
    #returns the esponse as  captured by gets.chomp
    def yes_or_no(answer)
        if answer == "Y"
            puts "Excellent! So how many rounds would you like to play?"
            gets.chomp
        end
    end

    #***UX ONLY***
    #
    #Provides a puts response in the case that player refuses to play
    def response_if_no
        puts "I'm sorry you don't want to play. Come back later when you're in a better mood."
    end

    #***UX ONLY***
    #
    #Displays message telling the user how many rounds will be played.
    #
    #rounds is passed in as captured in "yes_or_no" method to display number of rounds back to the user.
    def start_game_message(rounds)
      puts "Alright. We're going to play #{rounds} rounds. Let the battle begin."
      puts "<><><><><><><><><><><><><><><><><><><><><><><><"
    end

    #Asks user to choose weapon.
    #
    #returns string captured by gets.chomp to be stored as weapon
    def player1_choose?
        puts "Player 1, it's your turn."
        puts "\n ROCK, PAPER, or SCISSORS? Choose wisely!"
        gets.chomp
    end

    def player2_choose?
        puts "Player 2, it's your turn."
        puts "\n ROCK, PAPER, or SCISSORS? Choose wisely!"
        gets.chomp
    end

    #Defines winning weapon based on all possible scenarios.
    #
    #Returns 1 if player 1's weapon beats player 2's weapon
    #
    #Returns 2 if player 2's weapon beats player 1's weapon.
    #
    def winning_weapon
        if (@p1_weapon == "ROCK" && @p2_weapon == "SCISSORS") || (@p1_weapon == "SCISSORS" && @p2_weapon == "PAPER")|| (@p1_weapon == "PAPER" && @p2_weapon == "ROCK")
        return 1

      elsif (@p2_weapon == "SCISSORS" && @p1_weapon == "PAPER") || (@p2_weapon == "ROCK" && @p1_weapon == "SCISSORS") || (@p2_weapon == "PAPER" && @p1_weapon == "ROCK")
        return 2
      end
  end

    #***UX ONLY***
    #
    #Displays winner of each round
    #
    #Displays message to user who chose which weapon and wich player won the round. Indicates if tie.
    #
    #does not return any values/data
    def display_game_result
      if winning_weapon == 1
        puts "You chose #{@p1_weapon} and the Player 2 chose #{@p1_weapon}. Player 2 wins this round."
        puts "\n _____________________________________________________________"        
      elsif winning_weapon == 2
        puts "You chose #{@p1_weapon} and Player 2 chose #{@p1_weapon}. Player 2 wins this round."
        puts "\n _____________________________________________________________"        
      else
        puts "This round was a tie."
        puts "\n _____________________________________________________________"        
      end
    end

    #Used for testing purposes
    #
    #takes in two arguments (p1 and p2) and assigns them to @player1_score and @player2_score
    #    
    def set_scores(p1, p2)
        @player1_score = p1
        @player2_score = p2
    end

    #Simply evaluates which player has the highest to determine winner
    #
    #returns the score of the highest player 
    def who_won_all_rounds?
      if @player1_score > @player2_score
        return @player1_score

      elsif @player2_score > @player1_score
        return @player2_score
      end
    end

    #***UX ONLY***
    #
    #Displays player with highest score
    def display_who_won_all_rounds(the_winner)
      if the_winner == @player1_score
        puts "\n _____________________________________________________________"
        puts "Player 1 won #{@player1_score} rounds and is the winner!"

      elsif the_winner == @player2_score
        puts "\n _____________________________________________________________"
        puts "Player 2 won #{@player2_score} rounds and is the winner!"

      else
        puts "You both won the same number of rounds! It's a tie!"
        puts "\n _____________________________________________________________"
      end
    end

end
