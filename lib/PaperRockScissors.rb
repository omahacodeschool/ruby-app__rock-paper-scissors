player1_score = 0
player2_score = 0
tie_score = 0
game = 0
puts "ROCK--------------------------------PAPER-----------------------------SCISSORS!!"
puts "How many games of ROCK, PAPER, SCISSORS would you like to Play?"
best_of = gets.chomp.to_i
system "clear"
#
#Here we present the title of the game, and get user input for the number
#of games the user wants to play
#
#An until do loop is created set to the number of games the user wants to play.
#and input is requested for the players moves
#    
 until game == best_of do
    puts "\nPlayer 1 please enter your move then pass the keyboard to your opponent, whats your move? (R)ock, (P)aper, or (S)cissors??"
    player1 = gets.chomp.upcase
    system "clear"
    puts "\nPlayer 2 please enter your move then pass the keyboard to your opponent, whats your move? (R)ock, (P)aper, or (S)cissors??"
    player2 = gets.chomp.upcase
    system "clear"
#
#Here are the rules for the game and a scoring method is put in place
# 
    if  
        ((player1 == 'R') && (player2 == 'S') ||
        (player1 == 'S') && (player2 == 'P')||
        (player1 == 'P') && (player2 == 'R'))
        puts "Player 1 Wins--player1 #{player1_score}"
        player1_score += 1
        game += 1
    elsif 
        ((player1 == 'R') && (player2 == 'P')||
        (player1 == 'S') && (player2 == 'R')||
        (player1 == 'P') && (player2 == 'S'))
        puts "Player 2 Wins"
        player2_score += 1
        game += 1
    elsif 
        ((player1 == 'R') && (player2 == 'R')||
        (player1 == 'S') && (player2 == 'S') ||
        (player1 == 'P') && (player2 == 'P'))
        puts "Players have tied"
        tie_score += 1
        game += 1   
    end
#
#Here is the score return, the scores are presented to the users based on 
#results
#
    case
    when ((player1_score + player2_score + tie_score)) == best_of 
        if ((player1_score > player2_score))
            system "clear"
            puts "Player 1 Wins!! Winning #{player1_score} out of #{best_of} games!!!"
        elsif ((player2_score > player1_score))
            system "clear"
            puts "Player 2 Wins!!  Winning #{player2_score} out of #{best_of} games!!!"
        elsif ((player1_score == player2_score) || (tie_score + player1_score + player2_score == best_of))
            system "clear"
            puts "Its a tie!!  Player 1 won #{player1_score} out of #{best_of} games, Player 2 won #{player2_score} out of #{best_of}games, and both Players tied for a total of #{tie_score} times!! What an even match we have here!!"
        end
    end
end

# def rubric(Player1_score,Player2_score,tie_score,best_of)
