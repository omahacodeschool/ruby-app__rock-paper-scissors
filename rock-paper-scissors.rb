def rock_paper_scissors
end

def rps_set
end


def rps_game
  puts "Player 1, unleash your weapon!"
  player1_weapon = gets.chomp
  puts "Player 2, unleash your weapon!"
  player2_weapon = gets.chomp

  if player1_weapon == player2_weapon
    puts "#{player2_weapon} equals #{player2_weapon}."
    puts "It's a draw!"
  elsif player1_weapon == "rock" && player2_weapon == "scissors"
    puts "Rock smashes Scissors."
    puts "Player 1 is the winner!"
  elsif player1_weapon == "rock" && player2_weapon == "paper"
    puts "Paper covers Rock."
    puts "Player 2 is the winner!"
  elsif player1_weapon == "paper" && player2_weapon == "rock"
    puts "Paper covers Rock."
    puts "Player 1 is the winner!"
  elsif player1_weapon == "paper" && player2_weapon == "scissors"
    puts "Scissors cut Paper."
    puts "Player 2 is the winner!"
  elsif player1_weapon == "scissors" && player2_weapon == "paper"
    puts "Scissors cut Paper."
    puts "Player 1 is the winner!"
  elsif player1_weapon == "scissors" && player2_weapon == "rock"
    puts "Rock smashes Scissors."
    puts "Player 2 is the winner!"
  end

end