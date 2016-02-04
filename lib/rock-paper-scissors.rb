require "pry"

class RPS_Game

  def initialize
    @player_count = 0
    @round_count  = 0
    @win1         = 0
    @win2         = 0
  end

  def best_of_5
    while @win1 < 3 && @win2 < 3
      if @player_count == 0
        indentify_player_text
        @player1      = identify_player
        indentify_player_text
        @player2      = identify_player

        run_game
      else
        run_game
      end
    end
  end

  def run_game
    choose_weapon_text
    @weapon1 = choose_weapon
    choose_weapon_text
    @weapon2 = choose_weapon

    game_winner
    game_winner_text
    best_of_5_text    
  end

  def identify_player
    gets.chomp.capitalize
  end

  def indentify_player_text
    player_id_text = [
      "Who dares enter the field of battle?",
      "And who shall you test your fate against, #{@player1}?"
    ]

    puts player_id_text[@player_count].to_s
    @player_count += 1
  end

  def choose_weapon
    gets.chomp.downcase
  end

  def choose_weapon_text
    weapon_text = [
      "Very well. #{@player1}, what is your weapon of choice: Rock, paper, or scissors?",
      "Now #{@player2}, with what do you wish to vanquish #{@player1}: Rock, paper, or scissors?",
      "Again, #{@player1}! Choose your weapon.",
      "And you, #{@player2}, another chance to fell your foe...",
      "Things are really heating up, #{@player1}. Pick your poison.",
      "Finish him #{@player2}! Rock, paper, or scissors?",
      "Again? Alright #{@player1}, choose another weaopon I guess.",
      "#{@player2}, you know the drill.",
      "This is it! Last chance to redeem your pride #{@player1}.",
      "Sweep the leg #{@player2}!!!"
    ]
    if @round_count == 10
       @round_count  = 0
    else
    end
    puts weapon_text[@round_count].to_s
    @round_count += 1
  end

  def set_player1_weapon(x)
    @weapon1 = x  
  end

  def set_player2_weapon(x)
    @weapon2 = x  
  end

  def game_winner
    @who_won = {
      "weapon_1_won" => (@weapon1 == "rock" && @weapon2 == "scissors") || (@weapon1 == "paper" && @weapon2 == "rock") || (@weapon1 == "scissors" && @weapon2 == "paper"), 
      "weapon_2_won" => (@weapon2 == "rock" && @weapon1 == "scissors") || (@weapon2 == "paper" && @weapon1 == "rock") || (@weapon2 == "scissors" && @weapon1 == "paper")
    }

    if    @who_won["weapon_1_won"]
      @win1 += 1
    elsif @who_won["weapon_2_won"]
      @win2 += 1
    else
    end
  end

  def game_winner_text
    winner_text = {
      "winner1" => ("#{@weapon1.capitalize} defeats #{@weapon2}, and #{@player1} vanquishes #{@player2}! \nFor shame, #{@player2}..."),
      "winner2" => ("You chose wisely, #{@player2}! #{@weapon2.capitalize} is certainly mightier than the feeble #{@weapon1}. \nYou disgust me #{@player1}."),
      "tie_game" => ("We have a tie! It seems #{@player1} and #{@player2} are indeed well matched... \nYou both chose #{@weapon1}.")
    }
    
    if    @who_won["weapon_1_won"]
      puts winner_text["winner1"]
    elsif @who_won["weapon_2_won"]
      puts winner_text["winner2"]
    elsif @weapon1 == @weapon2
      puts winner_text["tie_game"]
    end
  end

  def best_of_5_text
    best_text = {
      "player1_best" => ("Congrats, #{@player1}! You've won #{@win1} matches."),
      "player2_best" => ("Congrats, #{@player2}! You've won #{@win2} matches."),
      "score_card" => ("#{@player1}: #{@win1} // #{@player2}: #{@win2}")
    }
    
    if    @win1 == 3
      puts best_text["player1_best"]
    elsif @win2 == 3
      puts best_text["player2_best"]
    elsif @win1 <  3 || @win2 < 3
      puts best_text["score_card"]
    end
  end
end

#new_game = RPS_Game.new

#new_game.best_of_5