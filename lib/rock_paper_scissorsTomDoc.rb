
class Game
#
#refresher defines the variables that will increase throughout
#the course of the game, all are set to the number value of '0'
#
    def refresher
        @player1_score = 0
        @player2_score = 0
        @computer_score = 0
        @tie_score = 0
        @game = 0
        @x = 0
    end
#
#intro displays a string and inputs an integer
#
    def intro
        puts "How many games of ROCK, PAPER, SCISSORS would you like to Play?"
        return gets.chomp.to_i
    end
#
#player_setup1 displays a string and inputs a string to be player1
#
    def player_setup1
        puts "\nPlayer 1 please enter your move then pass the keyboard to your 
        opponent, whats your move? (R)ock, (P)aper, or (S)cissors??"
        return gets.chomp.upcase
    end
#
#player_setup2 displays a string and inputs a string to be player2
#
    def player_setup2
        system "clear"
        puts "\nPlayer 2 please enter your move then pass the keyboard to your o
        pponent, whats your move? (R)ock, (P)aper, or (S)cissors??"
        return gets.chomp.upcase
    end
#
#rps is the algorithmic engine that governs the game, it takes the string 
#stored in 'player1' and 'player2' and evaluates them vs each other. 
#
#@mach is set to a string value, and @player1_score/@player2_score values are
#increased.
#
#Example: player1 = 'R' and player2 = 'S'       
#        @player1_score + 1
#        match => player1
#

    def rps_rules(player1,player2)
        if
            ((player1 == 'R') && (player2 == 'S') ||
            (player1 == 'S') && (player2 == 'P')||
            (player1 == 'P') && (player2 == 'R'))
            @player1_score += 1
            @match = "player1"
            
        elsif 
            ((player1 == 'R') && (player2 == 'P')||
            (player1 == 'S') && (player2 == 'R')||
            (player1 == 'P') && (player2 == 'S'))
            @player2_score += 1
            @match = "player2"
        elsif 
            ((player1 == 'R') && (player2 == 'R')||
            (player1 == 'S') && (player2 == 'S') ||
            (player1 == 'P') && (player2 == 'P'))
            @tie_score += 1
            @match = "tie" 
        elsif
            ((player1 == 'R') && (computer == 'S') ||
            (player1 == 'S') && (computer == 'P')||
            (player1 == 'P') && (computer == 'R'))
            @player1_score += 1
            @match = "player1"
            
        elsif 
            ((player1 == 'R') && (computer == 'P')||
            (player1 == 'S') && (computer == 'R')||
            (player1 == 'P') && (computer == 'S'))
            @computer_score += 1
            @match = "computer"
        elsif 
            ((player1 == 'R') && (computer == 'R')||
            (player1 == 'S') && (computer == 'S') ||
            (player1 == 'P') && (computer == 'P'))
            @tie_score += 1
            @match = "tie"   
        end      
    end
#
#match_announce takes the @match string and displays a string
#
#Example: @match == "player1"
#        => "Player 1 Wins Match"
#
    def match_announce
        if  @match == "player1"
            system "clear"
            puts "Player 1 Wins Match!!"
        elsif @match == "player2"
            system "clear"
            puts "Player 2 Wins Match!!"
        elsif @match == "computer"
            system "clear"
            puts "The Computer Wins Match!!"
        elsif @match == "tie"
            system "clear"
            puts "Match is a Tie!"
        end 
    end
#
#final_output retrieves the integer value from @player1_score and 
#@player2_score, evaluates them and outputs a string
#
#Example: player1_score > player2_score
#        => "Player 1 Wins Game!! Winning (their score) ouf of
#        (total games played)"
#
    def final_output
        case
        when ((@player1_score + @player2_score + @tie_score)) == @best_of 
            if ((@player1_score > @player2_score))
                system "clear"
                print "Player 1 Wins Game!! Winning #{@player1_score} out of #{@best_of} games!!!"
            elsif ((@player2_score > @player1_score))
                system "clear"
                print "Player 2 Wins Game!!  Winning #{@player2_score} out of #{@best_of} games!!!"
            elsif ((@player1_score == @player2_score) || (@tie_score + @player1_score + @player2_score == @best_of))
                system "clear"
                print "Its a tie Game!!  Player 1 won #{@player1_score} out of #{@best_of} games, Player 2 won #{@player2_score} out of #{@best_of}games, and both Players tied for a total of #{@tie_score} times!! What an even match we have here!!"
            end    
        end
    end
#
#game_runner has the loop that takes keeps the game going as long as
#its conditions are met.  The @best_of variable is taken from the intro
#
#method to set the number of games which determines how many times
#the game is looped.  The variable @game defined in the refresher
#
#keeps track of how many times the game has been looped and game_runner
#stops the loop when these values are the same.
#

    def game_runner
            @best_of = intro
        until @game == @best_of do
            player1 = player_setup1
            player2 = player_setup2
            rps_rules(player1,player2)
            match_announce
            @game += 1
            @match == 0  
        end
    final_output
    end
end
