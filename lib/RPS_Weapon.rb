require_relative 'RPS_Main'

class Weapon

  def initialize()
    @weapon = ""
    @other_weapon = ""
    @battle_result = 0
    @weapon_hash =Hash.new(0)
  end

  def set_weapon()
    print "#{$player_name}, what is your weapon of choice?  "
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
      set_weapon()
    end
   
    @weapon = weapon

  end

  def set_other_weapon()
    print "#{$other_player_name}, what is your weapon of choice?  "
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
        set_other_weapon()
      end
   
    @other_weapon = other_weapon

  end

  # DOES: 
  #
  # @weapon
  #
  # Returns String
  def get_weapon()
    return @weapon
  end

  def get_other_weapon()
    return @other_weapon
  end

  def reset_player_weapons()
   set_weapon()
   set_other_weapon()
end

def set_battle()

  if (@weapon == "scissors") && (@other_weapon  == "paper")
     @battle_result = 1
   end

  if (@weapon == "rock") && (@other_weapon == "scissors" )
    @battle_result = 1
  end

  if (@weapon == "paper") && (@other_weapon == "rock")
     @battle_result = 1
   end
  
  if (@weapon == "rock") && (@other_weapon == "paper") || (@weapon == "scissors" && @other_weapon == "rock") || ( @weapon == "paper") && (@other_weapon == "scissors")
     @battle_result = 2 
  end

  if @weapon == @other_weapon 
    @battle_result = 0
  end
end

  def get_battle()
      return @battle_result
  end







end