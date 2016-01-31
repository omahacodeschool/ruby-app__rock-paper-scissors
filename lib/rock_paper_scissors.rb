i = 0
player1_score = 0
player2_score = 0

puts "Hello! Would you like to play a few games of Rock Paper Scissors? (type Y or N)"
Yes_or_No = gets.chomp

if Yes_or_No.upcase == "Y"
  
    puts "Excellent! So how many rounds would you like to play?"

    rounds = gets.chomp

    puts "Alright. We're gonna play #{rounds} rounds. Let the battle begin!"

    puts "\n----------------------------------------------------------------------------"

    while i < rounds.to_i do

        
        puts "\n <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>"

        puts "Player 1, your turn."
        puts "\n ROCK, PAPER, or SCISSORS? Choose wisely!"
        p1_choice = gets.chomp
        puts "\n _____________________________________________________________"
        puts "Player 2, your turn!"
        puts "\n ROCK, PAPER, or SCISSORS? Choose wisely!"
        p2_choice = gets.chomp

    if 
        (p1_choice.upcase == "ROCK" && p2_choice.upcase == "SCISSORS") || (p1_choice.upcase == "SCISSORS" && p2_choice.upcase == "PAPER")|| (p1_choice.upcase == "PAPER" && p2_choice.upcase == "ROCK")
        
        puts "\n _____________________________________________________________"
        puts "Player 1 chose #{p1_choice} and Player 2 chose #{p2_choice}. You know what this means!"
        puts "\n Player 1 wins this round!"
        i += 1    
        player1_score += 1
            
    elsif
        (p2_choice.upcase == "SCISSORS" && p1_choice.upcase == "PAPER") || (p2_choice.upcase == "ROCK" && p1_choice.upcase == "SCISSORS") || (p2_choice.upcase == "PAPER" &&p1_choice.upcase == "ROCK")
        
        puts "\n _____________________________________________________________"
        puts "Player 2 chose #{p2_choice} and Player 1 chose #{p1_choice}. You know what this means!"

        puts "\n Player 2 wins this round!"
        puts "\n _____________________________________________________________"
        i += 1
        player2_score += 1            


    else 
        p1_choice.upcase == p2_choice.upcase
        puts "\n _____________________________________________________________"
        puts "You chose the same weapon. It's a tie!"
        player1_score += 1
        player2_score += 1
        i += 1

            
    end
end
            


        if
            player1_score > player2_score
            puts "\n _____________________________________________________________"
            puts "Player 1 won #{player1_score} rounds and is the winner!"

        elsif 
            player1_score == player2_score
            puts "\n _____________________________________________________________"        
            puts "It's a tie!!!"

        else
            puts "\n _____________________________________________________________"
            puts "Player 2 won #{player2_score} rounds and is the winner!"
        end
    end
    

if
    
    Yes_or_No.upcase == "N"
    puts "Sorry to hear that. Maybe we can play later... when you're in a better mood!"
    
end