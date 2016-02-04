require "pry"  

class RockPaperScissorsGame


  #TESTING_________________________________________________________

  #NEEDS WORK  
  #Make a method to insert user_name, number_needed_to_win, etc. 
  #For testing purposes
  def insert_variables_needed_to_run_test(name, num, etc)
    #NEEDS CODE HERE
  end

  #METHODS_________________________________________________________

  #makes arrays for keeping score 
  #sets @user_weapon_power to 1
  #sets speed of ascii graphics in both the intro and the match visualizations
  def create_scoring_caches

    @score_info = []
    @all_games_info = []
    @user_weapon_power = 1
    @time_between_ascii_lines_intro = 0.2
    @time_between_ascii_lines_match = 0.1

  end
  
  #takes input (choice of rock, paper, or scissors) and only accepts first character. 
  #sets input to @user_weapon (ex: "r", "p", or "s")
  def user_chooses_weapon

    @user_weapon = gets.downcase.slice!(0)
   
  end

  #puts introduction and rquest for user's name.
  #gets name, chomped and capitalized
  #sets @user_name
  def put_intro_and_get_username
    puts "_____________________________________________________________"
    puts "To play the RPS Thinking Machine v1.3, Please enter your name"
    puts "_____________________________________________________________"
    @user_name = gets.chomp.capitalize

  end

  #gets the number of games needed to win the set
  #sets @number_of_games_needed_to_win_set
  def get_number_of_games_needed_to_win_set

    @number_of_games_needed_to_win_set = gets.chomp.to_i[0]

  end 


  #comp makes random integer selection (0, 1, or 2)
  #sets the variable @computer_weapon_power to the random integer
  def computer_picks_weapon

    @computer_weapon_power = rand(0..2)

  end


  #makes an array as a key to compare user selection to the comp selection
  #takes the "r", "p", or "s" representing the user's weapon (@user_weapon)
  #sets @comparison_set to an array in the order of [losing weapon, tying weapon, winning weapon] and in the form of ["s", "r", "p"]
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
  #sets computer_weapon to a value in the form of "s", "r", or "p" using the comparison_array indexed against the randomly-selected integer in 
  #(method)computer_picks_weapon
  def translate_comparison_set_into_computer_weapon

    @computer_weapon = @comparison_set[@computer_weapon_power]

  end 

  
  #gets the outcome of the game and displays it, by comparing @computer_weapon_power against @user_weapon_power
  #@user_weapon_power in a fair game. 
  #(cheating may be accomplished by setting @user_weapon_power to a power other than 1)
  #sets @game_result to "comp_win", "user_win", or "no_win"
  def get_outcome

  if @computer_weapon_power == @user_weapon_power
    @game_result = "no_win"
      
  elsif @computer_weapon_power > @user_weapon_power
    @game_result = "comp_win"
      
  elsif @computer_weapon_power < @user_weapon_power
    @game_result = "user_win"

  end
  end



  #stores the score in the @all_games_info array
  #takes in a "c" for a computer win, or a "u" for a user win
  #inserts the value into the array @all_games_info to be counted in 
  #(method) is_set_over_check? 
  def make_score_for_game

    if @game_result == "comp_win"
      @all_games_info << "c"

    elsif @game_result == "user_win"
      @all_games_info << "u"

    else
    end
  end

  #Check to see if the set of games is over by counting wins in the @all_games_info array and comparing them against the @number_of_games_needed_to_win_set.
  #Method also sets @set_winner to "computer", "user", or "no"
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


#displays ascii visualizations of the name and the form of any weapon (in "r", "p", or "s" form) input.
#uses "sleep @time_between_ascii_lines_match" between each line of ascii, so that one may tweak the speed of the visualization by setting the @time_between_ascii_lines_match variable.
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


  #shows first visualization, in the form of ascii, reading "RPS Thinking Machine v1.3"
  #also displays "by J8R8MY, 2016"
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

  #gives {@user_name} an option of' weapons ("[R]ock, [P]aper, or [S]cissors?") 
  def give_user_option_of_weapon
    puts ""
    puts "            #{@user_name}, please choose your weapon!" 
    puts ""
    puts '                      [R]ock, [P]aper, or [S]cissors?'
    puts ""
  end

  #explains (puts) that the game will be played in a set, and asks {@user_name} how many games a player must win to claim victory
  def ask_user_how_many_games_needed_to_win
    puts ""
    puts "                 OK, #{@user_name}"
    puts ""
    puts "        We are going to play a set of matches."
    puts ""
    puts "    Please enter the number of wins needed to claim victory"
    puts ""
  end

  #puts a line "_______" of division, followed by the (method) display_ascii(@user_weapon), followed by another line of division 
  def display_user_weapon
    puts "________________________________________________________"
    display_ascii(@user_weapon)
    puts "________________________________________________________"
  end

  #puts a line "_______" of division, followed by the (method)   display_ascii(@computer_weapon), followed by another line of division   
  def display_computer_weapon
    puts "________________________________________________________"
    display_ascii(@computer_weapon)
    puts "________________________________________________________"
  end

  #puts an ascii visualization of the word "VERSUS"
  #uses "sleep @time_between_ascii_lines_match" to slow the ascii between each line.
  def display_versus_ascii
    puts '888     888 8888888888 8888888b.   .d8888b.  888     888  .d8888b.  '
    sleep @time_between_ascii_lines_match
    puts '888     888 888        888   Y88b d88P  Y88b 888     888 d88P  Y88b '
    sleep @time_between_ascii_lines_match
    puts '888     888 888        888    888 Y88b.      888     888 Y88b.      '
    sleep @time_between_ascii_lines_match
    puts 'Y88b   d88P 8888888    888   d88P   Y888b.   888     888   Y888b.   '
    sleep @time_between_ascii_lines_match
    puts ' Y88b d88P  888        8888888P        Y88b. 888     888      Y88b. '
    sleep @time_between_ascii_lines_match
    puts '  Y88o88P   888        888 T88b          888 888     888        888 '
    sleep @time_between_ascii_lines_match
    puts '   Y888P    888        888  T88b  Y88b  d88P Y88b. .d88P Y88b  d88P '
    sleep @time_between_ascii_lines_match
    puts '    Y8P     8888888888 888   T88b   Y8888P     Y88888P     Y8888P   '
    sleep @time_between_ascii_lines_match
  end


  #puts the winner of the game
  #takes in "comp_win", "user_win", or "no_win", and announces winner (or lack thereof) with "puts", along with a small bit of trash-talking.
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

  #checks the (method) is_set_over_check? to see if a winner has been calculated
  #puts a declaration, along with "GAME OVER"
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

#runs the game itself.
#references the methods defined above in order of flow.
#also contains a "while" statement, to run the MATCH part of the game while (method) is_set_over_check? returns "no" 
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
  