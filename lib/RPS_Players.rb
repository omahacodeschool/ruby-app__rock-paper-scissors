 require_relative 'RPS_Game'

 class Players

  def initialize()
    @player_name = ""
    @other_player_name = ""
    @max_games = 0
    @played_games = 0
    @weapon = ""
    @other_weapon = ""
    @battle_result = 0
  end

  def set_max_games()
    puts "Let's play 'Rock, Paper Scissors!'"
    print "How many games do you want to play?  "
    @max_games = gets.chomp.to_i
  end

  def set_played_games()
    @played_games += 1
  end

  def get_played_games()
    return @played_games
  end

  def get_max_games()
    return @max_games
  end

 def set_name()
    print "PLAYER ONE, enter your name:  "
    @player_name = gets.chomp
  end

  def get_name()
    return @player_name
  end


   def set_other_name()
     print "PLAYER TWO, enter your name:  "
     @other_player_name = gets.chomp
  end

  def get_other_name()
    return @other_player_name
  end


  def name_all_players()
    set_name()
    set_other_name()
  end

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

  # DOES: 
  #
  # @weapon
  #
  # Returns String
  def get_weapon()
    return @weapon
  end

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

  def get_other_weapon()
    return @other_weapon
  end

  def reset_player_weapons()
   set_weapon()
   set_other_weapon()
  end

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

def get_battle()
  return @battle_result
end

end