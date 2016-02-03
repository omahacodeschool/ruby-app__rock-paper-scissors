
def set_winner(p1_weapon, p2_weapon)
  
  if p1_weapon == p2_weapon
      return 0
  end

  if p1_weapon == 'paper'
    if p2_weapon == 'rock'
      return 1
    end
    if p2_weapon == 'scissors'
      return 2
    end

  elsif p1_weapon == 'scissors'
    if p2_weapon == 'rock'
      return 2
    end
    if p2_weapon == 'paper'
      return 1
    end

  elsif p1_weapon == 'rock'
    if p2_weapon == 'paper'
      return 2
    end
    if p2_weapon == 'scissors'
      return 1
    end
  end
end


puts set_winner('rock', 'paper')







