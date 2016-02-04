require "pry"  

class RockPaperScissorsGame
    
  #Make a method to insert user_name, number_needed_to_win, etc. 
  #For testing purposes
  def insert_variables_needed_to_run_test(name, num, etc)
    #NEEDS CODE HERE
  end

  #makes hashes for keeping score and sets @user_weapon_power
  def create_scoring_caches

    @score_info = []
    @all_games_info = []
    @user_weapon_power = 1
    @time_between_ascii_lines_intro = 0.2
    @time_between_ascii_lines_match = 0.1

  end
  
  #takes input (choice of rock, paper, or scissors) and only accepts first char
  def user_chooses_weapon

    @user_weapon = gets.downcase.slice!(0)
   
  end


  #puts introduction and gets name, chomped and capitalized
  #gets user_name
  #saves user_name
  def put_intro_and_get_username
    puts "_____________________________________________________________"
    puts "To play the RPS Thinking Machine v1.3, Please enter your name"
    puts "_____________________________________________________________"
    @user_name = gets.chomp.capitalize

  end

  #get the number of games needed to win the set
  def get_number_of_games_needed_to_win_set

    @number_of_games_needed_to_win_set = gets.chomp.to_i[0]

  end 


  #comp makes selection (1, 2, or 3), and sets the variable @computer_weapon_power to the random integer
  def computer_picks_weapon

    @computer_weapon_power = rand(0..2)

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

    if @computer_weapon_power == @user_weapon_power
      @game_result = "no_win"
      
    elsif @computer_weapon_power > @user_weapon_power
      @game_result = "comp_win"
      
    elsif @computer_weapon_power < @user_weapon_power
      @game_result = "user_win"

    end
  end



  #stores the score in the all_games_info hash
  #takes in a "c" for a computer win, or a "u" for a user win
  #saves the value in the array @all_games_info
  def make_score_for_game

    if @game_result == "comp_win"
      @all_games_info << "c"

    elsif @game_result == "user_win"
      @all_games_info << "u"

    else
    end
  end

#Check to see if the set of games is over by counting wins in the @all_games_info array and comparing them against the @number_of_games_needed_to_win_set
def is_set_over_check? 

  score_hash = {}

  @all_games_info.uniq.each do |element|
    score_hash[:"#{element}"] = "#{@all_games_info.count(element)}"
  end

  if score_hash[:c].to_i > @number_of_games_needed_to_win_set.to_i 
    @set_winner = "computer"

  elsif score_hash[:u].to_i > @number_of_games_needed_to_win_set.to_i
    @set_winner = "user"

  else
    #Continue the loop...
    @set_winner = "no"

  end
end



def display_ascii(weapon)
  if weapon == "r"
      puts '          _           _             _             _        '
      sleep @time_between_ascii_lines_match
      puts '         /\ \        /\ \         /\ \           /\_\      '
      sleep @time_between_ascii_lines_match
      puts '        /  \ \      /  \ \       /  \ \         / / /  _   '
      sleep @time_between_ascii_lines_match
      puts '       / /\ \ \    / /\ \ \     / /\ \ \       / / /  /\_\ '
      sleep @time_between_ascii_lines_match
      puts '      / / /\ \_\  / / /\ \ \   / / /\ \ \     / / /__/ / / '
      sleep @time_between_ascii_lines_match
      puts '     / / /_/ / / / / /  \ \_\ / / /  \ \_\   / /\_____/ /  '
      sleep @time_between_ascii_lines_match
      puts '    / / /__\/ / / / /   / / // / /    \/_/  / /\_______/   '
      sleep @time_between_ascii_lines_match
      puts '   / / /_____/ / / /   / / // / /          / / /\ \ \      '
      sleep @time_between_ascii_lines_match
      puts '  / / /\ \ \  / / /___/ / // / /________  / / /  \ \ \     '
      sleep @time_between_ascii_lines_match
      puts ' / / /  \ \ \/ / /____\/ // / /_________\/ / /    \ \ \    '
      sleep @time_between_ascii_lines_match
      puts ' \/_/    \_\/\/_________/ \/____________/\/_/      \_\_\   '
      sleep @time_between_ascii_lines_match
      puts ""
      puts "                         _____     "
      sleep @time_between_ascii_lines_match
      puts '   _____________________/     \__  '
      sleep @time_between_ascii_lines_match
      puts "                            |_|__) "
      sleep @time_between_ascii_lines_match
      puts "                           (@____) "
      sleep @time_between_ascii_lines_match
      puts "                           (@___)  "
      sleep @time_between_ascii_lines_match
      puts '   ---------------------\__(@__)   '
      sleep @time_between_ascii_lines_match
      puts ""
      sleep @time_between_ascii_lines_match
      puts ""
      
  elsif weapon == "p"
      puts '         _          _                   _          _            _     '
      sleep @time_between_ascii_lines_match
      puts '        /\ \       / /\                /\ \       /\ \         /\ \   '
      sleep @time_between_ascii_lines_match 
      puts '       /  \ \     / /  \              /  \ \     /  \ \       /  \ \  '
      sleep @time_between_ascii_lines_match 
      puts '      / /\ \ \   / / /\ \            / /\ \ \   / /\ \ \     / /\ \ \ '
      sleep @time_between_ascii_lines_match 
      puts '     / / /\ \_\ / / /\ \ \          / / /\ \_\ / / /\ \_\   / / /\ \_\ '
      sleep @time_between_ascii_lines_match 
      puts '    / / /_/ / // / /  \ \ \        / / /_/ / // /_/_ \/_/  / / /_/ / /'
      sleep @time_between_ascii_lines_match 
      puts '   / / /__\/ // / /___/ /\ \      / / /__\/ // /____/\    / / /__\/ / '
      sleep @time_between_ascii_lines_match 
      puts '  / / /_____// / /_____/ /\ \    / / /_____// /\____\/   / / /_____/  '
      sleep @time_between_ascii_lines_match 
      puts ' / / /      / /_________/\ \ \  / / /      / / /______  / / /\ \ \    '
      sleep @time_between_ascii_lines_match 
      puts '/ / /      / / /_       __\ \_\/ / /      / / /_______\/ / /  \ \ \   '
      sleep @time_between_ascii_lines_match 
      puts '\/_/       \_\___\     /____/_/\/_/       \/__________/\/_/    \_\/   '
      sleep @time_between_ascii_lines_match 
                                                                       
      puts ""
      sleep @time_between_ascii_lines_match
      puts "                       _______          "
      sleep @time_between_ascii_lines_match
      puts '   -------------------/   ___~)____     '
      sleep @time_between_ascii_lines_match
      puts "                             ______)    "
      sleep @time_between_ascii_lines_match
      puts "                             _______)   "
      sleep @time_between_ascii_lines_match
      puts "                            _______)    "
      sleep @time_between_ascii_lines_match
      puts "   -------------------.__________)      "
      sleep @time_between_ascii_lines_match
      puts ""
      puts ""
      
  elsif weapon == "s"
      puts '        _             _              _         _        '
      sleep @time_between_ascii_lines_match 
      puts '       / /\         /\ \            /\ \      / /\      '
      sleep @time_between_ascii_lines_match 
      puts '      / /  \       /  \ \           \ \ \    / /  \     '
      sleep @time_between_ascii_lines_match 
      puts '     / / /\ \__   / /\ \ \          /\ \_\  / / /\ \__  '
      sleep @time_between_ascii_lines_match 
      puts '    / / /\ \___\ / / /\ \ \        / /\/_/ / / /\ \___\ '
      sleep @time_between_ascii_lines_match 
      puts '    \ \ \ \/___// / /  \ \_\      / / /    \ \ \ \/___/ '
      sleep @time_between_ascii_lines_match 
      puts '     \ \ \     / / /    \/_/     / / /      \ \ \       '
      sleep @time_between_ascii_lines_match 
      puts ' _    \ \ \   / / /             / / /   _    \ \ \      '
      sleep @time_between_ascii_lines_match 
      puts '/_/\__/ / /  / / /________  ___/ / /__ /_/\__/ / /      '
      sleep @time_between_ascii_lines_match 
      puts '\ \/___/ /  / / /_________\/\__\/_/___\\ \/___/ /       '
      sleep @time_between_ascii_lines_match 
      puts ' \_____\/   \/____________/\/_________/ \_____\/        '
      sleep @time_between_ascii_lines_match 
      puts '        _            _            _          _          '
      sleep @time_between_ascii_lines_match 
      puts '       / /\         /\ \         /\ \       / /\        '
      sleep @time_between_ascii_lines_match 
      puts '      / /  \       /  \ \       /  \ \     / /  \       '
      sleep @time_between_ascii_lines_match 
      puts '     / / /\ \__   / /\ \ \     / /\ \ \   / / /\ \__    '
      sleep @time_between_ascii_lines_match 
      puts '    / / /\ \___\ / / /\ \ \   / / /\ \_\ / / /\ \___\   '
      sleep @time_between_ascii_lines_match 
      puts '    \ \ \ \/___// / /  \ \_\ / / /_/ / / \ \ \ \/___/   '
      sleep @time_between_ascii_lines_match 
      puts '     \ \ \     / / /   / / // / /__\/ /   \ \ \         '
      sleep @time_between_ascii_lines_match 
      puts ' _    \ \ \   / / /   / / // / /_____/_    \ \ \        '
      sleep @time_between_ascii_lines_match 
      puts '/_/\__/ / /  / / /___/ / // / /\ \ \ /_/\__/ / /        '
      sleep @time_between_ascii_lines_match 
      puts '\ \/___/ /  / / /____\/ // / /  \ \ \\ \/___/ /         '
      sleep @time_between_ascii_lines_match 
      puts ' \_____\/   \/_________/ \/_/    \_\/ \_____\/          '
      sleep @time_between_ascii_lines_match 
      puts ''                                                        
      puts '                        _______          '
      sleep @time_between_ascii_lines_match
      puts '   --------------------/   ___~)____     '
      sleep @time_between_ascii_lines_match
      puts '                              ______)    '
      sleep @time_between_ascii_lines_match
      puts '                           __________)   '
      sleep @time_between_ascii_lines_match
      puts '                          (@___)         '
      sleep @time_between_ascii_lines_match
      puts '   --------------------\__(@__)          '
      sleep @time_between_ascii_lines_match
      puts ""
      sleep @time_between_ascii_lines_match
      puts ""
      
  end 
end


  #"initalize" the system by puts-ing non-functioning gobbledy-gook"
def start_up

  puts ''
  puts '8888888b.  8888888b.   .d8888b.                                 '
  sleep @time_between_ascii_lines_intro      
  puts '888   Y88b 888   Y88b d88P  Y88b                                '
  sleep @time_between_ascii_lines_intro      
  puts '888    888 888    888 Y88b.                                     '
  sleep @time_between_ascii_lines_intro      
  puts '888   d88P 888   d88P   Y888b.                                  '
  sleep @time_between_ascii_lines_intro      
  puts '8888888P   8888888P        Y88b.                                '
  sleep @time_between_ascii_lines_intro      
  puts '888 T88b   888               888                                '
  sleep @time_between_ascii_lines_intro      
  puts '888  T88b  888        Y88b  d88P                                '
  sleep @time_between_ascii_lines_intro      
  puts '888   T88b 888          Y8888P                                  '
  sleep @time_between_ascii_lines_intro      
                                                                      
  puts ''                                                                    
                                                                      
  puts '88888888888 888      d8b          888      d8b                  '
  sleep @time_between_ascii_lines_intro      
  puts '    888     888      Y8P          888      Y8P                  '
  sleep @time_between_ascii_lines_intro      
  puts '    888     888                   888                           '
  sleep @time_between_ascii_lines_intro      
  puts '    888     88888b.  888 88888b.  888  888 888 88888b.   .d88b. '
  sleep @time_between_ascii_lines_intro      
  puts '    888     888  88b 888 888  88b 888 .88P 888 888  88b d88P 88b'
  sleep @time_between_ascii_lines_intro      
  puts '    888     888  888 888 888  888 888888K  888 888  888 888  888'
  sleep @time_between_ascii_lines_intro      
  puts '    888     888  888 888 888  888 888  88b 888 888  888 Y88b 888'
  sleep @time_between_ascii_lines_intro      
  puts '    888     888  888 888 888  888 888  888 888 888  888   Y88888'
  sleep @time_between_ascii_lines_intro      
  puts '                                                             888'
  sleep @time_between_ascii_lines_intro      
  puts '                                                        Y8b d88P'
  sleep @time_between_ascii_lines_intro      
  puts '                                                          Y88P  '
  sleep @time_between_ascii_lines_intro      
  puts ''
  puts '888b     d888                   888      d8b                    '
  sleep @time_between_ascii_lines_intro      
  puts '8888b   d8888                   888      Y8P                    '
  sleep @time_between_ascii_lines_intro      
  puts '88888b.d88888                   888                             '
  sleep @time_between_ascii_lines_intro      
  puts '888Y88888P888  8888b.   .d8888b 88888b.  888 88888b.   .d88b.   '
  sleep @time_between_ascii_lines_intro      
  puts '888 Y888P 888      88b d88P     888  88b 888 888  88b d8P  Y8b  '
  sleep @time_between_ascii_lines_intro      
  puts '888  Y8P  888 .d888888 888      888  888 888 888  888 88888888  '
  sleep @time_between_ascii_lines_intro      
  puts '888       888 888  888 Y88b.    888  888 888 888  888 Y8b.      '
  sleep @time_between_ascii_lines_intro      
  puts '888       888  Y888888   Y8888P 888  888 888 888  888   Y8888   '
  sleep @time_between_ascii_lines_intro      
  puts ''
                                                                                                                                                                                                 
  puts '         d888        .d8888b.                                   '
  sleep @time_between_ascii_lines_intro      
  puts '        d8888       d88P  Y88b                                  '
  sleep @time_between_ascii_lines_intro      
  puts '          888            .d88P                                  '
  sleep @time_between_ascii_lines_intro      
  puts '888  888  888           8888                                    '
  sleep @time_between_ascii_lines_intro      
  puts '888  888  888             Y8b.                                  '
  sleep @time_between_ascii_lines_intro      
  puts 'Y88  88P  888       888    888                                  '
  sleep @time_between_ascii_lines_intro      
  puts ' Y8bd8P   888   d8b Y88b  d88P                                  '
  sleep @time_between_ascii_lines_intro      
  puts '  Y88P  8888888 Y8P   Y8888P                                    '
  sleep @time_between_ascii_lines_intro
  puts ''
  puts '                                                 by J8R8MY, 2016'

end

  #gives option of' moves (r,p, or s) puts only, no 
def give_user_option_of_weapon
  puts ""
  puts "            #{@user_name}, please choose your weapon!" 
  puts ""
  puts '                      [R]ock, [P]aper, or [S]cissors?'
  puts ""
end

def ask_user_how_many_games_needed_to_win
  puts ""
  puts "                 OK, #{@user_name}"
  puts ""
  puts "        We are going to play a set of matches."
  puts ""
  puts "    Please enter the number of wins needed to claim victory"
  puts ""
end

def display_user_weapon
  puts "________________________________________________________"
  display_ascii(@user_weapon)
  puts "________________________________________________________"
end
  
def display_computer_weapon
  puts "________________________________________________________"
  display_ascii(@computer_weapon)
  puts "________________________________________________________"
end
  
def display_versus_ascii
  puts '888     888 8888888888 8888888b.   .d8888b.  888     888  .d8888b.  '
  sleep sleep @time_between_ascii_lines_match
  puts '888     888 888        888   Y88b d88P  Y88b 888     888 d88P  Y88b '
  sleep sleep @time_between_ascii_lines_match
  puts '888     888 888        888    888 Y88b.      888     888 Y88b.      '
  sleep sleep @time_between_ascii_lines_match
  puts 'Y88b   d88P 8888888    888   d88P   Y888b.   888     888   Y888b.   '
  sleep sleep @time_between_ascii_lines_match
  puts ' Y88b d88P  888        8888888P        Y88b. 888     888      Y88b. '
  sleep sleep @time_between_ascii_lines_match
  puts '  Y88o88P   888        888 T88b          888 888     888        888 '
  sleep sleep @time_between_ascii_lines_match
  puts '   Y888P    888        888  T88b  Y88b  d88P Y88b. .d88P Y88b  d88P '
  sleep sleep @time_between_ascii_lines_match
  puts '    Y8P     8888888888 888   T88b   Y8888P     Y88888P     Y8888P   '
  sleep sleep @time_between_ascii_lines_match
end


  #puts the winner of the game
  #takes in "comp_win", "user_win", or "no_win", and announces winner with "puts"
def puts_game_winner
    if @game_result == "comp_win"
      puts "________________________________________________________"
      puts ""
      puts "                COMPUTER WINS!"
      puts ""
      puts "      YOUR RESISTANCE IS PATHETIC -AS WELL AS FUTILE!"
    elsif @game_result == "user_win"
      puts "________________________________________________________"
      puts ""
      puts "                 THE MEAT-BAG WINS!"
      puts ""
      puts "   DON'T THINK FOR A MINUTE THAT YOUR PARTICULAR FORMATION"
      puts "OF CARBON-BASED LIFE IS GOOD FOR ANYTHING BUT WRITING CODE"
      puts ""
    elsif @game_result == "no_win"
      puts "________________________________________________________"
      puts ""
      puts "                     TIE GAME!"
      puts ""
      puts '       IS IT OBVIOUS THAT I AM TOYING WITH YOU?'
    else
        puts "puts_game_winner code is broken"
    end
end

def end_of_set_game_over

  if is_set_over_check? == "computer"
  puts "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _"
  puts ""
  puts "I HAVE PROVEN THE SUPERIORITY OF MY CIRCUITRY."
  puts "           BOW TO YOUR NEW MASTER."
  puts ""
  puts "                  GAME OVER"
  puts "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _" 
      
  elsif is_set_over_check? == "user"
  puts "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _"
  puts ""
  puts "            You win this time, human."
  puts ""
  puts "                  GAME OVER"
  puts "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _"

  end
end

def run_game

    create_scoring_caches

    start_up
    
    put_intro_and_get_username
    
    ask_user_how_many_games_needed_to_win
    
    get_number_of_games_needed_to_win_set

      while is_set_over_check? == "no"
        
        give_user_option_of_weapon
        
        user_chooses_weapon
        
        computer_picks_weapon
        
        mk_comparison_set
        
        translate_comparison_set_into_computer_weapon
      
        display_user_weapon
        
        display_versus_ascii
      
        display_computer_weapon
        
        get_outcome
        
        make_score_for_game
        
        puts_game_winner

      end
      
      end_of_set_game_over

end

end
  