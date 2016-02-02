class RPS_Game
    #Beginning of RPS program
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

        while @i < rounds.to_i do
        
            @p1_weapon = player1_choose?.upcase
            @p2_weapon = player2_choose?.upcase
            winner_of_game = winning_weapon
            display_game_result(winner_of_game)
            @i += 1

            if winner_of_game == 1
                @player1_score += 1
            elsif winner_of_game == 2
                @player2_score += 1
            else
                @player1_score += 0
                @player2_score += 0
            end
        
        end
    the_winner = who_won_all_rounds?
    display_who_won_all_rounds(the_winner)
    end

    end

    def set_weapons(p1, p2)
        @p1_weapon = p1
        @p2_weapon = p2
    end

    def want_to_play?
      puts "Hello! Would you like to play a few games of Rock, Paper, Scissors? (type 'Y' or 'N')"
      gets.chomp.upcase
    end

    def yes_or_no(answer)
        if answer == "Y"
            puts "Excellent! So how many rounds would you like to play?"
            gets.chomp
        end
    end

    def response_if_no
        puts "I'm sorry you don't want to play. Come back later when you're in a better mood."
    end

    def start_game_message(rounds)
      puts "Alright. We're going to play #{rounds} rounds. Let the battle begin."
    end


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


    def winning_weapon
      if (@p1_weapon == "ROCK" && @p2_weapon == "SCISSORS") || (@p1_weapon == "SCISSORS" && @p2_weapon == "PAPER")|| (@p1_weapon == "PAPER" && @p1_weapon == "ROCK")
        return 1

      elsif (@p2_weapon == "SCISSORS" && @p1_weapon == "PAPER") || (@p2_weapon == "ROCK" && @p1_weapon == "SCISSORS") || (@p2_weapon == "PAPER" && @p1_weapon == "ROCK")

        return 2

      else
        return nil
      end
    end

    def display_game_result(winner)
      if winner == 1
        puts "Player 1, you win."
      elsif winner == 2
        puts "Player 2, you win."
      else
        puts "This game was a tie."
      end
    end

    def who_won_all_rounds?
      if @player1_score > @player2_score
        return @player1_score

      elsif @player2_score > @player1_score
        return @player2_score

      else
        return nil
      end
    end

    def display_who_won_all_rounds(the_winner)
      if the_winner == @player1_score
        puts "\n _____________________________________________________________"
        puts "Player 1 won #{@player1_score} rounds and is the winner!"

      elsif the_winner == @player2_score
        puts "\n _____________________________________________________________"
        puts "Player 2 won #{@player2_score} rounds and is the winner!"

      else
        puts "It's a tie!"
      end
    end

end
