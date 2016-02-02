class RPS_Game_Vs_Comp
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
    #@comp_score - initially set at 0. Increases by 1 each time player 2 wins one match.
    #
    #comp_weapon - randomly chosen from "computer_choices" array via .sample method

    def run_game
    @i = 0
    @player1_score = 0
    @comp_score = 0

    answer = want_to_play?

    if answer == "N"
        response_if_no
    else 
        rounds = yes_or_no(answer)
        start_game_message(rounds)

        until @i == rounds.to_i || (@player1_score != @comp_score && @i > (rounds.to_i / 2)) do
        
            @p1_weapon = player1_choose?.upcase
            computer_choices = ["ROCK", "PAPER", "SCISSORS"]
            @comp_weapon = computer_choices.sample
            winner_of_game = winning_weapon
            display_game_result(winner_of_game)
            @i += 1

            if winner_of_game == 1
                @player1_score += 1
            elsif winner_of_game == 2
                @comp_score += 1
            else
                @player1_score += 0
                @comp_score += 0
            end
        
        end
    the_winner = who_won_all_rounds?
    display_who_won_all_rounds(the_winner)
    end

    end

    #Used primarily for testing purposes
    #
    #takes in two arguments (p1 and comp) and assigns them to @p1_weapon and @comp_weapon
    #
    def set_weapons(p1, comp)
        @p1_weapon = p1
        @comp_weapon = comp
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
    #returns the response as  captured by gets.chomp
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
      puts "Alright. We're going to play #{rounds} rounds. Let the battle begin!"
      puts "<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>"      
    end

    #Asks user to choose weapon.
    #
    #returns string captured by gets.chomp
    def player1_choose?
        puts "Player 1 (aka 'The Human'), it's your turn."
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
      if (@p1_weapon == "ROCK" && @comp_weapon == "SCISSORS") || (@p1_weapon == "SCISSORS" && @comp_weapon == "PAPER")|| (@p1_weapon == "PAPER" && @comp_weapon == "ROCK")
        return 1

      elsif (@comp_weapon == "SCISSORS" && @p1_weapon == "PAPER") || (@comp_weapon == "ROCK" && @p1_weapon == "SCISSORS") || (@comp_weapon == "PAPER" && @p1_weapon == "ROCK")
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

    def display_game_result(winner)
      if winner == 1
        puts "You chose #{@p1_weapon} and the Computer chose #{@comp_weapon}. You won this round."
        puts "\n _____________________________________________________________"        
      elsif winner == 2
        puts "The computer chose #{@comp_weapon} and you chose #{@p1_weapon}. The computer won this round!"
        puts "\n _____________________________________________________________"        
      else
        puts "You both chose #{@p1_weapon}. This round is s tie."
        puts "\n _____________________________________________________________"        
      end
    end

    #Simply evaluates which player has the highest to determine winner
    #
    #returns the score of the highest player 
    def who_won_all_rounds?
      if @player1_score > @comp_score
        return @player1_score

      elsif @comp_score > @player1_score
        return @comp_score
      end
    end

    #Used for testing purposes
    #
    #takes in two arguments (p1 and p2) and assigns them to @player1_score and comp_score
    #
    def set_scores(p1, comp)
        @player1_score = p1
        @comp_score = comp
    end

    #***UX ONLY***
    #
    #Displays player with highest score
    def display_who_won_all_rounds(the_winner)
      if the_winner == @player1_score
        puts "\n _____________________________________________________________"
        puts "Player 1 won #{@player1_score} rounds and is the winner!"

      elsif the_winner == @comp_score
        puts "\n _____________________________________________________________"
        puts "The computer won #{@comp_score} rounds and is the winner!"

      else
        puts "You both won the same number of rounds! It's a tie!"
        puts "\n _____________________________________________________________"        
      end
    end

end




    
