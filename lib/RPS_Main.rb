require_relative 'RPS_Weapon'
require_relative 'RPS_score_count'


class Main_rps

  def initialize()
    @player_name = "player_name"
    @weapon = Weapon.new()
    @score_count = Score_count.new()

  end

  def set_name()
     print "PLAYER, enter your name:  "
     player_name = gets.chomp
     @player_name = player_name
     
  end

  # DOES: 
  #
  # @player_name
  #
  # Returns String
  def get_name()
    return @player_name
  end

  def set_games_won()
    @score_count = @score_count.set_games_won
  end

  # DOES: 
  #
  # @score_count.get_games_won
  #
  # Returns Integer
  def get_games_won()
    return @score_count.get_games_won
  end

  def set_games_tied()
    @weapon = @score_count.set_games_tied
  end

  # DOES: 
  #
  # @score_count.get_games_tied
  #
  # Returns Method
  def get_games_tied()
    return @score_count.get_games_tied
  end

   def set_weapon()
    @weapon.set_weapon()
  end

  # DOES: 
  #
  # @weapon.get_weapon()
  #
  # Returns Method
  def get_weapon()
    return @weapon.get_weapon()
  end

  # DOES: 
  #
  # Returns String
  def get_victory_confirmation()
    return "#{get_name} wins with #{get_weapon}!"
  end

  # DOES: 
  #
  # Returns String
  def get_loss_confirmation()
    return "#{get_name} loses with #{get_weapon}!"
  end

  # DOES: 
  #
  # Returns String
  def get_tie_confirmation()
    return "Both players tie with #{get_weapon}!"
  end
  
end
