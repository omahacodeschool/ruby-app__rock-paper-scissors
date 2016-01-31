class Doggie
  
  def noise
    return "woof"
  end

end

class Cat
  
  def initialize (noise, color)
    @noise = noise
    @color = color
    # puts noise()
    # puts noise
    # puts @noise
  end

  def get_noise()
    return @noise
  end

  def get_color()
    return @color
  end

  def describe_animal
    return @noise + "   " + @color
  end

  def set_noise(noise)
    @noise = noise
  end

end
