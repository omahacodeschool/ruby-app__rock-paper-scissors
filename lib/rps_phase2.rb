def ask_for_odd_num_games
  puts "Would you like to play best of 3, 5, 7...? (Pick an odd number)"
  gets.chomp.to_i 
end

$p1_wins = 0
$p2_wins = 0

until $p1_wins > ask_for_odd_num_games / 2 || $p2_wins > num_games_chosen / 2

def p1_choose_weapon
  puts "\nPlayer 1: rock, paper or scissors?" 
  gets.chomp.downcase
end

def p2_choose_weapon
  puts "\nPlayer 2: rock, paper or scissors?" 
  gets.chomp.downcase
end

$p1_move = p1_choose_weapon
$p2_move = p2_choose_weapon

def match_winner
  if ($p1_move == "rock" && $p2_move == "scissors")
    $p1_wins += 1
  elsif ($p1_move == "rock" && $p2_move == "paper")
    $p2_wins += 1
  elsif ($p1_move == "paper" && $p2_move == "rock")
    $p1_wins += 1
  elsif ($p1_move == "paper" && $p2_move == "scissors")
    $p2_wins += 1
  elsif ($p1_move == "scissors" && $p2_move == "paper")
    $p1_wins += 1
  elsif ($p1_move == "scissors" && $p2_move == "rock")
    $p2_wins += 1
  else #tie scenario
    $p1_wins += 0
    $p2_wins += 0
  end
end

if $p1_wins > num_games_chosen / 2 
  puts "\nPlayer 1 wins!"
elsif $p2_wins > num_games_chosen / 2 
  puts "\nPlayer 2 wins!"
end 