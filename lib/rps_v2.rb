$player1 = "beth"
$player2 = "hal"
$p1 = "lizard"
$p2 = "spock"

# def winner
# 	if ($p1 == "scissors" && $p2 == "paper") || ($p1 == "rock" && $p2 == "scissors") || ($p1 == "paper" && $p2 == "rock") || ($p1 == "rock" && $p2 == "lizard") || ($p1 == "spock" && $p2 == "scissors") || ($p1 == "scissors" && $p2 == "lizard") || ($p1 == "spock" && $p2 == "rock") || ($p1 == "lizard" && $p2 == "paper") || ($p1 == "paper" && $p2 == "spock")|| ($p1 == "lizard" && $p2 == "spock") 
# 		return $player1
# 	elsif ($p2 == "scissors" && $p1 == "paper") || ($p2 == "rock" && $p1 == "scissors") || ($p2 == "paper" && $p1 == "rock") || ($p2 == "rock" && $p1 == "lizard") || ($p2 == "spock" && $p1 == "scissors") || ($p2 == "scissors" && $p1 == "lizard") || ($p2 == "spock" && $p1 == "rock") || ($p2 == "lizard" && $p1 == "paper") || ($p2 == "paper" && $p1 == "spock")|| ($p2 == "lizard" && $p1 == "spock") 
# 		return $player2
# 	elsif $p1 == $p2
# 		return nil
# 	end
# end

#hash where key is losing weapon and value is weapon that beats it

win_hash = {"paper" => ["scissors", "lizard"], "scissors" => ["rock", "spock"], "rock" => ["paper", "spock"], "lizard" => ["rock", "scissors"], "spock" => ["paper", "lizard"]}

def winner(win_hash)
	#player with the value that corresponds with the key wins
	if win_hash[$p1].include?($p2)
		puts "player 2 wins"
		return $player2
	elsif win_hash[$p2].include?($p1)
		puts "player 1 wins"
		return $player1
	elsif $p1 == $p2
		puts "no one wins"
		return nil
	end
end

winner