require_relative 'RPS_Players'
require_relative 'RPS_score_count'

class Game

  def initialize()
    @player = Players.new()
    @score_count = Score_count.new()
  end

## START: GAME FUNCTIONALITY METHODS

  def run_full_game()
    set_max_games()
    name_all_players()
    puts play_through_set_of_games()
    set_determine_set_winner()
    puts overall_winner_message()
  end

  def play_through_set_of_games()
    while get_played_games() < get_max_games() do
      reset_player_weapons()
      set_battle()
      puts battle_outcome()
      set_played_games()
    end
  end

  ## END: GAME FUNCTIONALITY METHODS

## START: PLAYERS SELECTION METHODS -> LINKED CLASS FROM RPS_Players_Selections.rb

  def set_max_games()
    @player.set_max_games()
  end

  def get_max_games()
    return @player.get_max_games()
  end

  def set_played_games()
    @player.set_played_games
  end

  def get_played_games()
    return @player.get_played_games
  end
    
  def set_name()
    @player.set_name()
  end

  def get_name()
    return @player.get_name()
  end

   def set_other_name()
     @player.set_other_name()
  end

  def get_other_name()
    return @player.get_other_name()
  end

  def name_all_players()
    @player.name_all_players()
  end

  def set_weapon()
    @player.set_weapon()
  end

  def get_weapon()
    return @player.get_weapon()
  end

  def set_other_weapon()
    @player.set_other_weapon()
  end

  def get_other_weapon()
    return @player.get_other_weapon()
  end

  def reset_player_weapons()
    @player.reset_player_weapons()
  end

  def set_battle()
    @player.set_battle()
  end

  def get_battle()
    return @player.get_battle()
  end

  def battle_outcome()
    if @player.get_battle() == 1
      set_games_won()
      return get_victory_confirmation() + " " + get_other_loss_confirmation()

    elsif @player.get_battle() == 2
      set_other_games_won()
      return get_loss_confirmation() + " " + get_other_victory_confirmation()

    else @player.get_battle() == 0
      set_games_tied()
      return get_tie_confirmation()
    end
  end
  
## END: PLAYERS SELECTION METHODS -> LINKED CLASS FROM RPS_Players_Selections.rb

  ## START: GAME SCORING METHODS -> LINKED CLASS FROM RPS_score_count.rb

  def set_games_won()
    @score_count.set_games_won()
  end

  def get_games_won()
    return @score_count.get_games_won()
  end

  def set_other_games_won()
     @score_count.set_other_games_won()
  end

  def get_other_games_won()
     @score_count.get_other_games_won()
  end
  # DOES: 
  #
  # @score_count.get_games_won
  #
  # Returns Integer
  def get_games_won()
    return @score_count.get_games_won()
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

  def set_determine_set_winner()
    @score_count.set_determine_set_winner()
  end

  def get_determine_set_winner()
    return @score_count.get_determine_set_winner()
  end
## END: GAME SCORING METHODS -> LINKED CLASS FROM RPS_score_count.rb
   

## START: TEXT-BASED NOTIFICATION METHODS 

  def overall_winner_message()
    if @score_count.get_determine_set_winner() == 1
    return "#{@player.get_name()} won the set of games with a score of #{@score_count.get_games_won()} vs. #{@score_count.get_other_games_won()}. Both players tied #{@score_count.get_games_tied} time(s)."

    elsif @score_count.get_determine_set_winner() == 2
      return "#{@player.get_other_name()} won the set of games with a score of #{@score_count.get_other_games_won()} vs. #{@score_count.get_games_won()}. Both players tied #{@score_count.get_games_tied} time(s)."
          
    else @score_count.get_determine_set_winner() == 0
      return "It was a tie, guys. You're both just super duper."
    end
  end

  # DOES: 
  #
  # Returns String
  def get_victory_confirmation()
    return "#{@player.get_name()} wins with #{@player.get_weapon()}!"
  end

  def get_other_victory_confirmation()
    return "#{@player.get_other_name()} wins with #{@player.get_other_weapon()}!"
  end

  # DOES: 
  #
  # Returns String
  def get_loss_confirmation()
    return "#{@player.get_name()} loses with #{@player.get_weapon()}!"
  end

  def get_other_loss_confirmation()
    return "#{@player.get_other_name()} loses with #{@player.get_other_weapon()}!"
  end

  # DOES: 
  #
  # Returns String
  def get_tie_confirmation()
    return "Both players tie with #{@player.get_weapon()}!"
  end

## END: TEXT-BASED NOTIFICATION METHODS 
  
end
