# Define a method to play a game of RPS
#
# Rock beats scissors, loses to paper
# Paper beats rock, loses to scissors
# Scissors beats paper, loses to rock
#
# create prompt asking for player names
# create prompt asking for weapon choice
# compare weapons to see which wins
# alert players to who won the match
#
def rock_paper_scissors
  win1 = 0
  win2 = 0
  
    until win1 == 3 || win2 == 3
      puts "Who dares enter the field of battle?"
      player1 = gets.chomp.capitalize
      puts "And who shall you test your fate against, #{player1}?"
      player2 = gets.chomp.capitalize
      puts "Very well, #{player1}, what is your weapon of choice: Rock, paper, or scissors?"
      weapon1 = gets.chomp.downcase
      puts "Now #{player2}, with what do you wish to vanquish #{player1}: Rock, paper, or scissors?"
      weapon2 = gets.chomp.downcase

      # player1 wins
      if (weapon1 == "rock" && weapon2 == "scissors") || (weapon1 == "paper" && weapon2 == "rock") || (weapon1 == "scissors" && weapon2 == "paper")
        puts "#{weapon1.capitalize} defeats #{weapon2}, and #{player1} vanquishes #{player2}!"
        puts "For shame, #{player2}..."
        win1 += 1
      # player2 wins
      elsif (weapon2 == "rock" && weapon1 == "scissors") || (weapon2 == "paper" && weapon1 == "rock") || (weapon2 == "scissors" && weapon1 == "paper")
        puts "You chose wisely, #{player2}! #{weapon2.capitalize} is certainly mightier than the feeble #{weapon1}."
        puts "You disgust me #{player1}."
        win2 += 1
      # tie game
      elsif weapon1 == weapon2
        puts "We have a tie! It seems #{player1} and #{player2} are indeed well matched... You both chose #{weapon1}."
      end
    end
  if win1 == 3
    puts "Congrats, #{player1}! You've won #{win1} matches."
  elsif win2 == 3
    puts "Congrats, #{player2}! You've won #{win2} matches."
  end
end

rock_paper_scissors