#"initalize" the system by puts-ing non-functioning gobbledy-gook"
def start_up
end

#pause for effect while program picks a move. Only "puts", with no calculating.
def computing_pause
  puts "The RPS Thinking Machine v1.3 is computing..."
  sleep 2 
  puts "gggggggggggggggggggg"
  sleep 0.6
  puts "gggggggggggggggggggg"

  sleep 0.5
  puts "gggggggggggggggggggg"

  sleep 0.5
  puts "gggggggggggggggggggg"
  sleep 0.5

  puts "gggggggggggggggggggg"
  puts "..."
  puts "________________________________________________________"
  puts ""
  puts "Computer picks:"
end


def display_ascii(x)
  if x == "r"
    puts "          _______   "
    puts "      ---'     |_)  "
    puts "             |_|__) "
    puts "            (_____) "
    puts "            (____)  "
    puts "      ---.__(___)   "
    puts ""
    puts "   ROCK"

  elsif x == "p"
    puts "          _______          "
    puts "      ---'   ____)____     "
    puts "                ______)    "
    puts "                _______)   "
    puts "               _______)    "
    puts "      ---.__________)      "
    puts ""
    puts "   PAPER"

  elsif x == "s"
    puts "          _______          "
    puts "      ---'   ____)____     "
    puts "                ______)    "
    puts "             __________)   "
    puts "            (____)         "
    puts "      ---.__(___)          "
    puts ""
    puts "    SCISSORS"
    
  end 
end

#makes a comparison_set array as a key to compare user selection to the comp selection
def mk_comparison_set(user_sel_rps)
  if user_sel_rps == "r"
    $comparison_set = ["s", "r", "p"]
  elsif user_sel_rps == "p"
    $comparison_set = ["r", "p", "s"]
  elsif user_sel_rps == "s"
    $comparison_set = ["p", "s", "r"]
  end
end

#gets the outcome of the game and displays it
def get_outcome(comp_i, user_i)
  if comp_i > user_i
    puts "COMP WINS!"
    score
  elsif comp_i < user_i
    puts "USER WINS"
  elsif comp_i == user_i
    puts "TIE GAME!"
  end
end

#stores the score in the all_games_info hash
def make_score_for_game(user,comp)
  all_games_info
end

#intro to the game
start_up

#makes hashes for keeping score
score_info = []
all_games_info = {}

#gets user_name
puts "To play the RPS Thinking Machine v1.3, Please enter your name"
$user_name = gets.chomp.capitalize

#"initalize" the system by puts-ing non-functioning gobbledy-gook"
# CALL the method here.

#gives option of moves (r,p, or s)
puts "Ok, #{$user_name}! Please choose: Rock, Paper, or Scissors?"
puts "You don't have to type it all out- just the first letter will work."

#takes input (choice of rock, paper, or scissors) and only accepts first char.
$user_sel_rps = gets.downcase.slice!(0)
puts "You chose..."
sleep 1.5

#displays the user_choice in ascii
display_ascii($user_sel_rps)
puts ""
sleep 0.5

#inserts user_sel information keyed to 2 into game_info hash
game_info[2] = $user_sel_rps

#comp makes selection (1, 2, or 3)
$computer_sel_rand = rand(1.. 3)

#make an array of the hierarchy of objects with corresponding indexes showing loser, tie, and winner
mk_comparison_set($user_sel_rps)

#Translate the computer_sel_key into r, p, or s.
$computer_sel_rps = $comparison_set[$computer_sel_rand] 

#inserts comp_sel information into game_info hash and links with its key.
game_info[$computer_sel_rand] = 

#Translate selections into the two competing hand forms, and give integers



puts $user_sel.to_s + " <= user"

puts $computer_sel.to_s + " <= comp"


 
