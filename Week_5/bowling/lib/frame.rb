class Frame
  attr_reader :roll_1, :roll_2, :strike, :spare

  def initialize(roll_1, roll_2)
    @roll_1 = roll_1
    @roll_2 = roll_2
    @strike = is_strike
    @spare = is_spare
  end

  private
  
  def is_strike
    @roll_1 == 10
  end

  def is_spare
    @roll_1 + @roll_2 == 10 && @roll_1 != 10
  end
end