
class Game
#
#refresher defines the variables that will increase throughout
#the course of the game, all are set to the number value of '0'
#
    def refresher
        rps = ['R','P','S']
        @player1_score = 0
        @player2_score = 0
        @computer_score = 0
        @tie_score = 0
        @game = 0
        @x = 0
    end
#
#Here the number of games played is set with the input of the user, the best_of
#variable is set to track the game
#
    def qualifier
        puts "Welcome to Paper, Rock, Scissors, press '1' for a one player game against the computer, or press '2' for a two player game."
        return gets.chomp.downcase
    end

    def computer
        puts "Alright, good luch against the computer!"
        computer = rps.sample(1)
        
    def intro
        puts "How many games of ROCK, PAPER, SCISSORS would you like to Play?"
        return gets.chomp.to_i
    end
#
#player_setup1 stores the first players input and defines the variable 
#'player1' as the players 'move' as a string, either R,P or S
#
    def player_setup1
        puts "\nPlayer 1 please enter your move then pass the keyboard to your 
        opponent, whats your move? (R)ock, (P)aper, or (S)cissors??"
        return gets.chomp.upcase
    end
#
#player_setup2 stores the second players input and defines the variable 
#'player2' as that players 'move' in a string, either R,P,or S
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
#depending on what those strings are, the variables @player1_score and  
#@player2_score are increased to keep track of how many individual matches
#
#are being won by which player, and the variable @match is set as either
#the string 'player1' if that player wins, 'player2' if that player wins
#
#or 'tie' if both players choose the same option.
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
#match_announce takes the @match defined in rps_rules and based on its
#string content and displays the winner of each round or match in
#a string
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
#final_output evaluates the number defined in the variables
#@player1_score and @player2_score to determine the overall winner
#of the game
#
#final_output takes the variable @tie_score defined in 'intro'
#to determine when the players have won and displays a string
#
#telling users who won
#
#Example: player1_score > player2_score
#        => "Player 1 Wins Game!! Winning (their score) ouf of
#        (total games played)"
#
#if players have the number of match wins store in @player1_score and
#@player2_score, or the variables have an equal value with a value in
#
#the @tie_score variable, the game is determined a tie, and that message
#is given to the users
#
#Example:  @player1_score = @player2_score and @tie_score > 0
#         => "Its a tie Game!!  Player 1 won (@player1_score) out of (
#         @best_of), Player 2 won (@player2_score) out of (@best_of), both 
#         Players tied for a total of (@tie_score) times!! What an even match 
#         we have here!!"
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
#player1 and player2 which are defined from user input in the player1_setup
#and player2_setup methods are defined here for evaluation in rps_rules
#
#match announce is triggered to announce the match winner, before the
#@game variable increased, and the @match variable is reset to be
#
#redefined by the rps_rules method in the next instatiation of the loop.
#then when the loop has met its conditions the final_output method is
#
#called to display in a string to announce the winner of the game.
#
    def game_runner
            choice = qualifier
            @best_of = intro
            if choice == '1'
                until @game == @best_of do
                    player1 = player_setup1
                    rps_rules(player1,player2)
                    match_announce
                    @game += 1
                    @match == 0
                end
            else
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
end
end
x = Game.new

x.refresher
x.game_runner



    



