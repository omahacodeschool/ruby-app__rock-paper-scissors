def rock_paper_scissors
end

def rps_set
end


def rps_game

player1_wins = 0
player2_wins = 0

  while player1_wins < 3 && player2_wins < 3 do

    puts "Player 1, unleash your weapon!"
    player1_weapon = gets.chomp
    puts "Player 2, unleash your weapon!"
    player2_weapon = gets.chomp

    if player1_weapon == player2_weapon
      puts "#{player2_weapon} equals #{player2_weapon}."
      puts "It's a draw!"
    elsif player1_weapon == "rock" && player2_weapon == "scissors"
      player1_wins += 1
      puts "Rock smashes Scissors."
      puts "Player 1 wins!"
    elsif player1_weapon == "rock" && player2_weapon == "paper"
      player2_wins += 1
      puts "Paper covers Rock."
      puts "Player 2 wins!"
    elsif player1_weapon == "paper" && player2_weapon == "rock"
      player1_wins += 1
      puts "Paper covers Rock."
      puts "Player 1 wins!"
    elsif player1_weapon == "paper" && player2_weapon == "scissors"
      player2_wins += 1
      puts "Scissors cut Paper."
      puts "Player 2 wins!"
    elsif player1_weapon == "scissors" && player2_weapon == "paper"
      player1_wins += 1
      puts "Scissors cut Paper."
      puts "Player 1 wins!"
    elsif player1_weapon == "scissors" && player2_weapon == "rock"
      player2_wins += 1
      puts "Rock smashes Scissors."
      puts "Player 2 wins!"
    end

    puts "-------"
    puts "Player 1: #{player1_wins}"
    puts "Player 2: #{player2_wins}"
    puts "Play again."
    puts "-------"

  end

  if player1_wins > player2_wins
    puts "Player 1 wins the set #{player1_wins} to #{player2_wins}"
  elsif player2_wins > player1_wins
    puts "Player 2 wins the set #{player2_wins} to #{player1_wins}"
  end
    

end

rps_game