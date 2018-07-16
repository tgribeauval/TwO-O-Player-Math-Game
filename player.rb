class Player #class player

  attr_accessor :lives #attr_accessor allows us to assign lives

  def initialize #initializing the number of lives to 3
    @lives = 3
  end

  def wrong #define a method wrong that will substract 1 from lives
    @lives -= 1
  end
end
