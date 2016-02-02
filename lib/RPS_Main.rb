require_relative 'RPS_Weapon'
require_relative 'RPS_score_count'

class Main_rps

  def initialize()
    $player_name = ""
    $other_player_name = ""
    @max_games = 0
    @played_games = 0
    @weapon = Weapon.new()
    @score_count = Score_count.new()

  def run_game()
    set_max_games()
    establish_players
    puts play_through_set()
    set_determine_set_winner()
    puts winner_message()
  end

  def establish_players()
    set_name()
    set_other_name()
  end

  def reset_player_weapons()
   @weapon.reset_player_weapons()
  end

  def play_through_set()
    while @played_games < @max_games do
      reset_player_weapons()
      set_battle()
      puts battle_outcome()
      set_played_games()
    end
  end

  def set_max_games()
    puts "Let's play 'Rock, Paper Scissors!'"
    print "How many games do you want to play?  "
    max_games = gets.chomp.to_i
    @max_games = max_games
  end

  def get_max_games()
    return @max_games
  end

  def set_played_games()
      @played_games += 1
  end

  def get_played_games()
      return @played_games
  end

  def set_name()
     print "PLAYER ONE, enter your name:  "
     $player_name = gets.chomp
  end

   def set_other_name()
     print "PLAYER TWO, enter your name:  "
     $other_player_name = gets.chomp
  end

  # DOES: 
  #
  # @player_name
  #
  # Returns String
  def get_name()
    return @player_name
  end

  def get_other_name()
    return @other_player_name
  end

  def set_games_won()
    @score_count.set_games_won()
  end

  def set_other_games_won()
     @score_count.set_other_games_won()
  end

  # DOES: 
  #
  # @score_count.get_games_won
  #
  # Returns Integer
  def get_games_won()
    return @score_count.get_games_won()
  end

  def get_other_games_won()
     @score_count.get_other_games_won()
  end

  def set_games_tied()
    @score_count.set_games_tied
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

  def set_other_weapon()
    @weapon.set_other_weapon()
  end

  # DOES: 
  #
  # @weapon.get_weapon()
  #
  # Returns Method
  def get_weapon()
    return @weapon.get_weapon()
  end

  def get_other_weapon()
    return @weapon.get_other_weapon()
  end

  def set_battle()
   @weapon.set_battle()
  end

  def get_battle()
      return @weapon.get_battle()
  end


  def battle_outcome()

  if @weapon.get_battle() == 1
    set_games_won()
    puts get_victory_confirmation() + " " + get_other_loss_confirmation()

  elsif @weapon.get_battle() == 2
    set_other_games_won()
    puts get_loss_confirmation() + " " + get_other_victory_confirmation()

  else @weapon.get_battle() == 0
    set_games_tied()
    puts get_tie_confirmation()
  end

end

  def set_determine_set_winner()
    @score_count.set_determine_set_winner()
  end

  def get_determine_set_winner()
    return @score_count.get_determine_set_winner()
  end

   def winner_message()
    if @score_count.get_determine_set_winner() == 1
    return "#{$player_name} won the set of games with a score of #{@score_count.get_games_won()} vs. #{@score_count.get_other_games_won()}. Both players tied #{@score_count.get_games_tied} time(s)."

    elsif @score_count.get_determine_set_winner() == 2
      return "#{$other_player_name} won the set of games with a score of #{@score_count.get_other_games_won()} vs. #{@score_count.get_games_won()}. Both players tied #{@score_count.get_games_tied} time(s)."
          
    else @score_count.get_determine_set_winner() == 0
      return "It was a tie, guys. You're both just super duper."
    end
  end

  # DOES: 
  #
  # Returns String
  def get_victory_confirmation()
    return "#{ $player_name} wins with #{@weapon.get_weapon()}!"
  end

  def get_other_victory_confirmation()
    return "#{$other_player_name} wins with #{@weapon.get_other_weapon()}!"
  end

  # DOES: 
  #
  # Returns String
  def get_loss_confirmation()
    return "#{$player_name} loses with #{@weapon.get_weapon()}!"
  end

  def get_other_loss_confirmation()
    return "#{$other_player_name} loses with #{@weapon.get_other_weapon()}!"
  end

  # DOES: 
  #
  # Returns String
  def get_tie_confirmation()
    return "Both players tie with #{@weapon.get_weapon()}!"
  end
  
end
end
