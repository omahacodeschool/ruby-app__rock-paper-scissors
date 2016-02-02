i = 0
p1_wins = 0
p2_wins = 0
r = "rock"
p = "paper"
s = "scissors"

def ask_for_first_player_weapon
    puts "Player one, choose your weapon."
    gets.chomp.downcase
end

def ask_for_second_player_weapon
    puts "Player two, choose your weapon."
    gets.chomp.downcase
end


puts "How many rounds would you like to play?"

rounds = gets.chomp

puts "Okay so we're playing " + rounds + " rounds!"

puts "\n-----------------------------------------------------------------------"
while i < rounds.to_i do
        weapon_p1 = ask_for_first_player_weapon
        weapon_p2 = ask_for_second_player_weapon
        i += 1
puts "\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ "
    if weapon_p1 == r && weapon_p2 == s
        puts "Player 1 chose rock. \nPlayer 2 chose scissors."
        puts "Rock beats scissors, Player 1 wins the round."
        p1_wins += 1
    end
    if weapon_p1 == p && weapon_p2 == r
        puts "Player 1 chose paper. \nPlayer 2 chose rock."
        puts "Paper beats rock, Player 1 wins the round."
        p1_wins += 1
    end
    if weapon_p1 == s && weapon_p2 == p
        puts "Player 1 chose scissors. \nPlayer 2 chose rock."
        puts "Scissors beats paper, Player 1 wins the round."
        p1_wins += 1
    end

    if weapon_p1 == s && weapon_p2 == r
        puts "Player 1 chose scissors. \n Player 2 chose rock."
        puts "Rock beats scissors, Player 2 wins the round."
        p2_wins += 1
    end
    if weapon_p1 == r && weapon_p2 == p
        puts "Player 1 chose rock. \nPlayer 2 chose paper."
        puts "Paper beats rock, Player 2 wins the round."
        p2_wins += 1
    end
    
    if weapon_p1 == p && weapon_p2 == s
        puts "Player 1 chose paper. \nPlayer 2 chose scissors."
        puts "Scissors beats paper, Player 2 wins the round."
        p2_wins += 1
    end
    
    if weapon_p1 == r && weapon_p2 == r
        puts "Player 1 chose rock. \nPlayer 2 chose rock."
        puts "Both chose the same. Tie!"
        p1_wins += 0
        p2_wins += 0
    end
    
    if weapon_p1 == p && weapon_p2 == p
        puts "Player 1 chose paper. \nPlayer 2 chose paper."
        puts "Both chose the same. Tie!"
        p1_wins += 0
        p2_wins += 0
    end
    
    if weapon_p1 == s && weapon_p2 == s
        puts "Player 1 chose scissors. \nPlayer 2 chose scissors."
        puts "Both chose the same. Tie!"
        p1_wins += 0
        p2_wins += 0
    end
puts "\n----------------------------------------------------------------------"
end
puts "\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
puts "Player one scored:"
puts p1_wins
puts "Player two scored:"
puts p2_wins
if p1_wins == p2_wins
    puts "Tie game!"
end

if p1_wins > p2_wins
    puts "🎉Player 1 wins! 🎉"
end
if p2_wins > p1_wins
    puts "🎉Player 2 wins!🎉"
end