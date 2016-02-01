#Checks player 1's choice against player 2's choice to find winning weapon.

#p1_choice - Player 1's choice (rock, paper, or scissors)

#p2_choice - Player 2's choice (rock, paper, or scissors)

#Returns the winning weapon


def winning_weapon(p1_choice, p2_choice)
    puts "Player 1 chose #{p1_choice} and Player 2 chose #{p2_choice}"
    
    if 
        (p1_choice.upcase == "ROCK" && p2_choice.upcase == "SCISSORS") || (p1_choice.upcase == "SCISSORS" && p2_choice.upcase == "PAPER")|| (p1_choice.upcase == "PAPER" && p2_choice.upcase == "ROCK")
            puts "\n Player 1 wins this round"        
        winner_weapon = p1_choice

    elsif
        (p2_choice.upcase == "SCISSORS" && p1_choice.upcase == "PAPER") || (p2_choice.upcase == "ROCK" && p1_choice.upcase == "SCISSORS") || (p2_choice.upcase == "PAPER" &&p1_choice.upcase == "ROCK")
            puts "\n Player 2 wins this round"
        winner_weapon = p2_choice


    else 
        p1_choice.upcase == p2_choice.upcase
        puts "\n _____________________________________________________________"
        puts "You chose the same weapon. It's a tie!"

            
    end
        winner_weapon


end


#Checks to see which player has the highest score of all rounds combined

#player1_score - player 1's accumulated score for all rounds

#player2_score - player 2's accumulatd score for all rounds

#returns player with highest score

def who_won?(player1_score, player2_score)
        if
            player1_score > player2_score
            puts "\n _____________________________________________________________"
            puts "Player 1 won #{player1_score} rounds and is the winner!"
            winner = player1_score

        elsif 
            player1_score == player2_score
            puts "\n _____________________________________________________________"        
            puts "It's a tie!!!"

        else
            puts "\n _____________________________________________________________"
            puts "Player 2 won #{player2_score} rounds and is the winner!"
            winner = player2_score
        end
        winner
end
