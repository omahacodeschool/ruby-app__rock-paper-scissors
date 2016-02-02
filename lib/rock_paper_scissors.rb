

class Game
#
#This method sets the variables that will increase throughout
#the course of the game
#
    def refresher
        @best_of = intro
        @player1_score = 0
        @player2_score = 0
        @tie_score = 0
        @game = 0
        @x = 0
    end
#
#Here the number of games played is set via the user 
#
    def intro
        puts "How many games of ROCK, PAPER, SCISSORS would you like to Play?"
        return gets.chomp.to_i
    end
#
#The players move is inputed in these two methods
#
    def player_setup1
        puts "\nPlayer 1 please enter your move then pass the keyboard to your 
        opponent, whats your move? (R)ock, (P)aper, or (S)cissors??"
        return gets.chomp.upcase
    end

    def player_setup2
        puts "\nPlayer 2 please enter your move then pass the keyboard to your o
        pponent, whats your move? (R)ock, (P)aper, or (S)cissors??"
        return gets.chomp.upcase
    end
#
#This is the engine of the game, it defines who wins the individual
#matches using input values set by the users.  
#
#Example:player1 = (R)ock and player2 = (S)cissors
#        match => player1
#
#player1 would 'win' the match, their score would go up 1, the @match variable
#would be set to "player1"
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
        end
    end
#
#This method displays the individual match results.
#Example: @match == "player1"
#
#        => "Player 1 Wins Match"
#
    def match_announce
        if  @match == "player1"
            system "clear"
            puts "Player 1 Wins Match!!"
        elsif @match == "player2"
            system "clear"
            puts "Player 2 Wins Match!!"
        elsif @match == "tie"
            system "clear"
            puts "Match is a Tie!"
        end 
    end
#
#When all of the requested games have been played, this method
#will display the winner dependant on the players score.
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
#This method contains the loop for the game, which will be completed
#when the games played equal the number of games requested.
#
#It also defines the user input values for the moves of each player,
#along with advancing the @game value to keep the loop going and
#reseting the @match value between matches
#
    def game_runner
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

x = Game.new
x.refresher
x.game_runner



    



