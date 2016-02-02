require_relative 'RPS_Main'

class Score_count

  def initialize()
    @score_count = 0
    @games_tied = 0
    @other_score_count = 0
    @set_winner = 0
  end

  def set_games_won()
    @score_count += 1
  end

  def set_other_games_won()
     @other_score_count += 1
  end

  # DOES: 
  #
  # @score_count: 
  #
  # Returns Integer
  def get_games_won()
    return @score_count
  end

  def get_other_games_won()
     return @other_score_count
  end

  def set_games_tied()
    @games_tied += 1
  end

  # DOES: 
  #
  # @games_tied:
  #
  # Returns Integer
  def get_games_tied()
    return @games_tied
  end

  def set_determine_set_winner()
     if @score_count > @other_score_count
      @set_winner = 1

      elsif @score_count < @other_score_count
           @set_winner = 2
            
      else @score_count == @other_score_count
           @set_winner = 0
      end
  end

  def get_determine_set_winner()
    return @set_winner
  end

end
