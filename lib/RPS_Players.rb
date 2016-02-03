 require_relative 'RPS_Game'

 class Players

  # @player_name: Instance Variable with String Value. stores Player One's Name
  # @other_player_name: Instance Variable with String value. stores Player Two's name
  # @max_games: Instance Variable with Integer Value. Stores max number of RPS games to play
  # @played_games: Instance Variable with Integer Value. Keeps track of how many games have been played. 
  # @weapon: Instance Variable with String Value. Contains player one's weapon selection.
  # @other_weapon: Instance Variable with String Value. Contains player two's weapon selection.
  # @battle_result: Instance Variable with Integer Value. Used with methods to determine the winner of an RPS game.
  def initialize()
    @player_name = ""
    @other_player_name = ""
    @max_games = 0
    @played_games = 0
    @weapon = ""
    @other_weapon = ""
    @battle_result = 0
  end

  # SETS user String input to value of max number of RPS games to play. Converts to Integer
  def set_max_games()
    puts "Let's play 'Rock, Paper Scissors!'"
    print "How many games do you want to play?  "
    @max_games = gets.chomp.to_i
  end

 # RETURNS Integer value of Instance Variable @max_games (total number of games to be played)
  def get_max_games()
    return @max_games
  end

  # SETS Integer defining number of games that have been finished by players. 
  # Adds +1 to @played_games current value each time method is called.
  def set_played_games()
    @played_games += 1
  end

  # RETURNS Integer value of Instance Variable @played_games (Games completed by players)
  def get_played_games()
    return @played_games
  end

  # SET String containing Player One's name, based on user input.
  def set_name()
    print "PLAYER ONE, enter your name:  "
    @player_name = gets.chomp
  end

  # RETURN String value of Instance Variable @player_name (Player One's name)
  def get_name()
    return @player_name
  end

  # SET String containing Player Two's name, based on user input.
  def set_other_name()
     print "PLAYER TWO, enter your name:  "
     @other_player_name = gets.chomp
  end

  # RETURN String value of Instance Variable @other_player_name (Player Two's name)
  def get_other_name()
    return @other_player_name
  end

  # Method RETURNS set_name Method, followed by set_other_name Method, in order to set the name Strings of both players. 
  def name_all_players()
    set_name()
    set_other_name()
  end

  # Method SETS String containing Player One's weapon selection--based on user input.
  # weapon: local variable with String value. Contains user input
  # case weapon: Case Conditional to check value of local variable.
    # If user input does not match available options, it will put a string message
    # and trigger the prompt to select a weapon again, by setting the value of weapon equal to the set_weapon() Method.
  def set_weapon()
    print "#{@player_name}, what is your weapon of choice?  "
    weapon = gets.chomp.downcase

    case weapon
    when "rock"
      weapon = "rock"
    when "paper"
      weapon = "paper"
    when "scissors"
      weapon = "scissors"
    when "lizard"
      weapon = "lizard"
    when "spock"
      weapon = "spock"
    else
      puts "That's not a valid choice, you goon. Pick again."
      weapon = set_weapon()
    end
   
    @weapon = weapon
  end

  # RETURN String value of Instance Variable @weapon (Player One's Weapon)
  def get_weapon()
    return @weapon
  end

  # Method SETS String containing Player Two's weapon selection--based on user input.
  # other_weapon: local variable with String value. Contains user input
  # case other_weapon: Case Conditional to check value of local variable.
    # If user input does not match available options, it will put a string message
    # and trigger the prompt to select a weapon again, by setting the value of other_weapon equal to the set__other_weapon() Method.
  def set_other_weapon()
    print "#{@other_player_name}, what is your weapon of choice?  "
    other_weapon = gets.chomp.downcase

    case other_weapon
      when "rock"
        other_weapon = "rock"
      when "paper"
        other_weapon = "paper"
      when "scissors"
        other_weapon = "scissors"
      when "lizard"
        other_weapon = "lizard"
      when "spock"
        other_weapon = "spock"
      else
        puts "That's not a valid choice, you goon. Pick again."
        other_weapon = set_other_weapon()
      end
   
    @other_weapon = other_weapon
  end

  # RETURN String value of Instance Variable @other_weapon (Player Two's Weapon)
  def get_other_weapon()
    return @other_weapon
  end

  # Method calls set_weapon Method, followed by set_other_weapon Method
  # to set a new String value to each corresponding instance variable. 
  def reset_player_weapons()
     set_weapon()
     set_other_weapon()
  end

  # Alorithmic Method using Conditional to compare player weapons. SETS Integer value based on outcome of the conditional.
  # 1 = Player One Wins, 2 = Player Two Wins, 0 = Tie Game 
  def set_battle()
    if ((@weapon == "scissors") && (@other_weapon == "paper")) || ((@weapon == "rock") &&  (@other_weapon == "scissors")) || ((@weapon == "paper") && (@other_weapon == "rock"))
      @battle_result = 1
    
    elsif ((@weapon == "rock") && (@other_weapon == "paper")) || ((@weapon == "scissors") && (@other_weapon == "rock")) || ((@weapon == "paper") && (@other_weapon == "scissors"))
      @battle_result = 2 

    else
      @weapon == @other_weapon 
      @battle_result = 0
    end
  end

# RETURN Integer value of Instance Variable @battle_result (Determines which player won an RPS match)
  def get_battle()
     @battle_result = set_battle()
  end

## START: METHODS FOR TESTS ##
  #
  # RETURNS method String variable as @weapon Instance Variable for testing purposes
  def set_weapon_for_tests(weapon)
    @weapon = weapon
  end

   # RETURNS method String variable as @other_weapon Instance Variable for testing purposes
  def set_other_weapon_for_tests(weapon)
    @other_weapon = weapon
  end
  ## END: METHODS FOR TESTS ##
end
