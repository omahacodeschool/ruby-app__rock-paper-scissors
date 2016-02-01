player1_score = 0
player2_score = 0
tie_score = 0
game = 0

def intro
    puts "How many games of ROCK, PAPER, SCISSORS would you like to Play?"
    return gets.chomp.to_i
    system "clear"
end

def player_setup1
     # until game == best_of do
        puts "\nPlayer 1 please enter your move then pass the keyboard to your opponent, whats your move? (R)ock, (P)aper, or (S)cissors??"
        return gets.chomp.upcase
        system "clear"
end

def player_setup2
        puts "\nPlayer 2 please enter your move then pass the keyboard to your opponent, whats your move? (R)ock, (P)aper, or (S)cissors??"
        return gets.chomp.upcase
        system "clear"
end

def RPS_Rules(player1,player2,player1_score,player2_score,tie_score,player1_game,player2_game,tie)
    if
        ((player1 == 'R') && (player2 == 'S') ||
        (player1 == 'S') && (player2 == 'P')||
        (player1 == 'P') && (player2 == 'R'))
        return player1_game
        player1_score += 1
        game += 1
    elsif 
        ((player1 == 'R') && (player2 == 'P')||
        (player1 == 'S') && (player2 == 'R')||
        (player1 == 'P') && (player2 == 'S'))
        return player2_game
        player2_score += 1
        game += 1
    elsif 
        ((player1 == 'R') && (player2 == 'R')||
        (player1 == 'S') && (player2 == 'S') ||
        (player1 == 'P') && (player2 == 'P'))
        return tie
        tie_score += 1
        game += 1   
    end
end

def final_output(player1_score,player2_score,best_of,tie_score,player1_game,player2_game,tie)
    case
    when ((player1_score + player2_score + tie_score)) == best_of 
        if player1_game
            # system "clear"
            return "Player 1 Wins!! Winning #{player1_score} out of #{best_of} games!!!"
        elsif player2_game
            # system "clear"
            return "Player 2 Wins!!  Winning #{player2_score} out of #{best_of} games!!!"
        elsif tie
            # system "clear"
            return "Its a tie!!  Player 1 won #{player1_score} out of #{best_of} games, Player 2 won #{player2_score} out of #{best_of}games, and both Players tied for a total of #{tie_score} times!! What an even match we have here!!"
    end    end
end
best_of = intro
player1 = player_setup1
player2 = player_setup2
# result = final_output(player1_score,player2_score,best_of,tie_score)
# puts RPS_Rules(player1,player2,player1_score,player2_score,tie_score)
puts final_output(player1_score,player2_score,best_of,tie_score)
