def rock_paper_scissors

  puts "Let's play Rock-Paper-Scissors!"
  puts "\nPlayer 1: What's your move?"
  player1_move = gets.chomp.capitalize

  puts "\nOkay! Player1, hand Player 2 the computer and look away."
  puts "\nPlayer 2: What's your move?"
  player2_move = gets.chomp.capitalize

  if player1_move == "Rock"
    if player2_move == "Paper"
      puts "\n#{player2_move} beats #{player1_move}! Player 2 Wins!"
    elsif player2_move == "Scissors"
      puts "\n#{player1_move} beats #{player2_move}! Player 1 Wins!"
    else
      puts "\nIt's a Tie! Play Again?"
    end
  elsif player1_move == "Paper"
    if player2_move == "Scissors"
      puts "\n#{player2_move} beats #{player1_move}! Player 2 Wins!"
    elsif player2_move == "Rock"
      puts "\n#{player1_move} beats #{player2_move}! Player 1 Wins!"
    else
      puts "\nIt's a Tie! Play Again?"
    end
  elsif player1_move == "Scissors"
    if player2_move == "Rock"
      puts "\n#{player2_move} beats #{player1_move}! Player 2 Wins!"
    elsif player2_move == "Paper"
      puts "\n#{player1_move} beats #{player2_move}! Player 1 Wins!"
    else
      puts "\nIt's a Tie! Play Again?"
    end
  end
  
end

rock_paper_scissors()