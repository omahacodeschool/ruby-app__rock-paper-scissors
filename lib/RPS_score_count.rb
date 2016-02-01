class Score_count


  def initialize()
    @score_count = 0
    @games_tied = 0
  end

  def set_games_won()
    @score_count += 1
  end

  # DOES: 
  #
  # @score_count: 
  #
  # Returns Integer
  def get_games_won()
    return @score_count
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

end

