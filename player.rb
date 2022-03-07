# - Player
#   @name
#   @lives

class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def take_life
    @lives -= 1
  end

end