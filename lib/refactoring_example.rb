def ask_for_p1_move
    puts "Player 1: Rock, Paper or Scissors?"
    return gets.chomp.downcase #explicit return optional
end

def ask_for_p2_move
    puts "Player 2: Rock, Paper or Scissors?"
    return gets.chomp.downcase
end

def game_winner(p1_move, p2_move)
   if (p1_move == "rock" && p2_move == "scissors")
    return 1
  elsif (p1_move == "rock" && p2_move == "paper")
    return 2
  elsif (p1_move == "paper" && p2_move == "rock")
    return 1
  elsif (p1_move == "paper" && p2_move == "scissors")
    return 2
  elsif (p1_move == "scissors" && p2_move == "paper")
    return 1
  elsif (p1_move == "scissors" && p2_move == "rock")
    return 2
  else
    return nil
  end
end
    
def display_winner(r)
    if r == 1
        puts "Player 1 wins!"
    elsif r == 2
        return "Player 2 wins!"
    else
        return "That was a draw!"
    end
end

p1_move = ask_for_p1_move
p2_move = ask_for_p2_move
  
result = game_winner(p1_move, p2_move)

puts display_winner(result)