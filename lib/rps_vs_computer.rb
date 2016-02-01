#vs computer version
=begin
  
rescue Exception => e
  
end

def winning_weapon(p1_choice, comp_choice)

    
    if 
        (p1_choice.upcase == "ROCK" && comp_choice == "SCISSORS") || (p1_choice.upcase == "SCISSORS" && comp_choice == "PAPER")|| (p1_choice.upcase == "PAPER" && comp_choice == "ROCK")
        winner_weapon = p1_choice

    elsif
        (comp_choice == "SCISSORS" && p1_choice.upcase == "PAPER") || (comp_choice == "ROCK" && p1_choice.upcase == "SCISSORS") || (comp_choice == "PAPER" &&p1_choice.upcase == "ROCK")
        winner_weapon = comp_choice

    end
        winner_weapon


end


def who_won?(player1_score, comp_score)
        if
            player1_score > comp_score
            puts "\n _____________________________________________________________"
            puts "You won #{player1_score} rounds and you are the winner!"
            winner = player1_score

        elsif 
            player1_score == comp_score
            puts "\n _____________________________________________________________"        
            puts "It's a tie!!!"

        else
            puts "\n _____________________________________________________________"
            puts "The computer won #{comp_score} rounds and is the winner!"
            winner = comp_score
        end
        winner
end

i = 0
computer_choices = ["ROCK", "PAPER", "SCISSORS"]
comp_choice = computer_choices.sample
player1_score = 0
comp_score = 0



puts "Hello! Would you like to play a few games of Rock Paper Scissors? (type Y or N)"
yes_or_no = gets.chomp

if yes_or_no.upcase == "Y"
  
    puts "Excellent! So how many rounds would you like to play?"

    rounds = gets.chomp

    puts "Alright. We're gonna play #{rounds} rounds. Let the battle begin!"

    puts "\n----------------------------------------------------------------------------"

    while i < rounds.to_i do

        
        puts "\n <><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>"

        puts "Okay, human. It's your turn."
        puts "\n ROCK, PAPER, or SCISSORS? Choose wisely!"
        p1_choice = gets.chomp
        puts "\n _____________________________________________________________"
        puts "Now the computer will play."
        puts "\n _____________________________________________________________"
    
        if 
            winning_weapon(p1_choice, comp_choice) == p1_choice
            player1_score += 1
            i += 1
            puts "\n You won this round"       
            
        elsif
            winning_weapon(p1_choice, comp_choice) == comp_choice
            comp_score += 1
            i += 1
            puts "The computer won this round."
        else
            player1_score += 1
            comp_score += 1
            i += 1
            puts "You tied this round"
        end
        puts "You chose #{p1_choice} and the computer chose #{comp_choice}"
    end
    
who_won?(player1_score, comp_score)

    if
    
    yes_or_no.upcase == "N"
    puts "Sorry to hear that. Maybe we can play later... when you're in a better mood!"
    
end
end
=end

#Asks user if they want to play


    
