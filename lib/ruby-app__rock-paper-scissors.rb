class RockPaperScissorsGame

  #displays the ascii image of the selected weapon
  #takes in "r", "p", or "s"
  #puts ascii plus the weapon name
  #returns nil
  def display_ascii(weapon)
    if weapon == "r"
      puts "          _______   "
      puts "      ---'     |_)  "
      puts "             |_|__) "
      puts "            (_____) "
      puts "            (____)  "
      puts "      ---.__(___)   "
      puts ""
      puts "   ROCK"

    elsif weapon == "p"
      puts "          _______          "
      puts "      ---'   ____)____     "
      puts "                ______)    "
      puts "                _______)   "
      puts "               _______)    "
      puts "      ---.__________)      "
      puts ""
      puts "   PAPER"

    elsif weapon == "s"
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



  #"initalize" the system by puts-ing non-functioning gobbledy-gook"
  def start_up
      puts "(INITIALIZING...)" 
  end

  #puts introduction and gets name, chomped and capitalized
  #gets user_name
  #saves user_name
  def put_intro_and_get_username
    puts "To play the RPS Thinking Machine v1.3, Please enter your name"
    @user_name = gets.chomp.capitalize
  end

  #NEEDS WORK
  #pause for effect while program picks a move. Only "puts", with no calculating.
  def computing_pause
    puts "The RPS Thinking Machine v1.3 is computing..."
    sleep 0.3 
    puts "9779546%#uu..."
    puts "23cDFnstjGFHgcv4979%&6485"
    puts "3597*))*(8yGTFUdufykbkuyYF)}"
    sleep 0.6
    puts "8JhfcSWk5764%#3erGFTfrvVCJTTXCJCvCJTjfc734..."

    sleep 0.5
    puts "ycjtCXTJckyjvVCJTTXCJCvCJTjvvk57bc64%#34575"

    sleep 0.5
    puts "DFnstjGDFnstjGFHg"
    sleep 0.5

    puts "dufyk01029bdtykbkuyYF)..."
    puts "..."
    puts "________________________________________________________"
    sleep 0.2
    puts ""
    puts "Computer picks:"
  end

  #comp makes selection (1, 2, or 3), and returns the integer
  def computer_picks_weapon
    @computer_weapon_power = rand(1.. 3)
  end



  #makes a comparison_set array as a key to compare user selection to the comp selection
  #uses an "r", "p", or "s", representing the user's weapon (@user_weapon)
  #sets (@comparison_set) to an array in the order of [losing weapon, tying weapon, winning weapon] and in the form of ["s", "r", "p"]
  def mk_comparison_set
    if @user_weapon == "r"
      @comparison_set = ["s", "r", "p"]
    elsif @user_weapon == "p"
      @comparison_set = ["r", "p", "s"]
    elsif @user_weapon == "s"
      @comparison_set = ["p", "s", "r"]
    end
  end

  #Translates comparison_set
  #sets computer_weapon to a value in the form of "s", "r", or "p" using the comparison_array indexed against the randomly-selected integer in computer_picks_weapon
  def translate_comparison_set_into_computer_weapon
    @computer_weapon = @comparison_set[@computer_weapon_power]
  end 


  #gets the outcome of the game and displays it, by comparing @computer_weapon_power against @user_weapon_power
  #The user_weapon_power is always set to 2.
  #returns "comp_win", "user_win", or "no_win"
  def get_outcome
  @user_weapon_power = 2
    if @computer_weapon_power > @user_weapon_power
      return "comp_win"
    elsif @computer_weapon_power < @user_weapon_power
      return "user_win"
    else
      return "no_win"
    end
  end


  #NEEDS WORK
  #stores the score in the all_games_info hash
  #takes in a "c" for a computer win, or a "u" for a user win
  #saves the value 
  def make_score_for_game(winner)
    if winner == "c"
      @all_games_info << "c"
    elsif winner == "u"
      @all_games_info << "u"
    end
  end

  #puts the winner of the game
  #takes in "comp_win", "user_win", or "no_win", and announces winner with "puts"
  def puts_winner (result)
    if result == "comp_win"
      puts "COMPUTER WINS! Resistance is futile!"
    elsif result == "user_win"
      puts "USER WINS! You got lucky!"
    else
      puts "TIE GAME!"
    end
  end

#get the number of games needed to win the set
def get_number_of_games_needed_to_win_set
  @number_of_games_needed_to_win_set = gets.chomp
end

#Check to see if the set of games is over by counting wins in the @all_games_info array and comparing them against the @number_of_games_needed_to_win_set
def is_game_over_check? 
  score_hash = {}
  @all_games_info.uniq.each do |element|
    score_hash[:"#{element}"] = "#{all_games_info.count(element)}"
  end
  if score_hash[:c] == @number_of_games_needed_to_win_set 
    #Computer wins the set
  elsif score_hash[:u] == @number_of_games_needed_to_win_set
    #User wins the set
end



  #________________________________ THIS RUNS A GAME

  #intro to the game
  start_up

  #NEEDS WORK
  #makes hashes for keeping score
  score_info = []
  all_games_info = {}
  game_info = {}



  #NEEDS WORK
  #"initalize" the system by puts-ing non-functioning gobbledy-gook"
  # CALL the method here.

  #gives option of moves (r,p, or s)
  puts "Ok, #{@user_name}! Please choose: Rock, Paper, or Scissors?"
  puts ""
  puts "No need to type it all out- just the first letter will work."

  #takes input (choice of rock, paper, or scissors) and only accepts first char.
  @user_sel_rps = gets.downcase.slice!(0)
  puts "You chose..."
  sleep 0.2

  #displays the user_choice in ascii
  display_ascii($user_sel_rps)
  puts ""
  sleep 0.3



end
   
