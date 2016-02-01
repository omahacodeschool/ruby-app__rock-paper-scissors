class Weapon

  def initialize()
    @weapon = ""
  end

  def set_weapon()
    print "What is your weapon of choice?  "
    weapon = gets.chomp
    weapon = weapon.downcase

    case weapon
    when "rock"
      @weapon = "rock"
    when "paper"
      @weapon = "paper"
    when "scissors"
      @weapon = "scissors"
    when "lizard"
      @weapon = "lizard"
    when "spock"
      @weapon = "spock"
    else
      puts "That's not a valid choice, you goon. Pick again."
      set_weapon()
    end
   
    @weapon = weapon

  end

  # DOES: 
  #
  # @weapon
  #
  # Returns String
  def get_weapon()
    return @weapon
  end

end