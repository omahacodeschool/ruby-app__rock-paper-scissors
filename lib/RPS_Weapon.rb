class Weapon

  def initialize()
    @weapon = ""
    @other_weapon = ""
    @battle_result = 0
  end

  def set_weapon()
    print "PLAYER TWO, what is your weapon of choice?  "
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
    print "PLAYER TWO, what is your weapon of choice?  "
    other_weapon = gets.chomp.downcase

    case other_weapon
      when "rock"
        return other_weapon = "rock"
      when "paper"
        return other_weapon = "paper"
      when "scissors"
        return other_weapon = "scissors"
      when "lizard"
        return other_weapon = "lizard"
      when "spock"
        return other_weapon = "spock"
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
  if @weapon == @other_weapon 
    @battle_result = 0
  end

  if (@weapon == "scissors" && @weapon2 == "paper") || (@weapon == "rock" && @other_weapon == "scissors") || ( @weapon == "paper" && @other_weapon == "rock")
    @battle_result = 1
  end
  
  if (@weapon == "rock" && @other_weapon == "paper") || (@weapon == "scissors" && @other_weapon == "rock") || ( @weapon == "paper" && @other_weapon == "scissors")
    @battle_result = 2 
  end
end

  def get_battle()
      return @battle_result
  end

def battle_outcome()

  if @battle_result == 1
    set_games_won()
    return get_victory_confirmation() + " " + get_other_loss_confirmation()

  elsif @battle_result == 2
    set_other_games_won()
    return get_loss_confirmation() + " " + get_other_victory_confirmation()

  else @battle_result == 0
    set_games_tied()
    return get_tie_confirmation()
  end

end






end