


def paper_rock_sissors(str1, str2)
 
  rock_game = rock(str1, str2)
  paper_game = paper(str1, str2)
  sissors_game = sissors(str1, str2)
  #game_counter = 0
  #game_stop = 3
 
  #while game_counter < game_stop
    if str1 == "sissors" 
      sissors_game
    elsif str1 == "paper"
      paper_game
    else str1 == "rock"
      rock_game
    end
   #game_counter +=1
  #end
end

def sissors(str1, str2)
 
  if str2 == "paper"
    return "Player one wins!"
  elsif str2 == "sissors"
    return "It's a tie!"
  else str2 == "rock"
      return "Player two wins!"
  end 
end

def paper(str1, str2)
 
  if str2 == "rock"
    return "Player one wins!"
  elsif str2 == "paper"
    return "It's a tie!"
  else str2 == "sissors"
      return "Player two wins!"
  end 
end

def rock(str1, str2)
 
  if str2 == "sissors"
    return "Player one wins!"
  elsif str2 == "rock"
    return "It's a tie!"
  else str2 == "paper"
      return "Player two wins!"
  end 
end



puts paper_rock_sissors("paper", "paper")


