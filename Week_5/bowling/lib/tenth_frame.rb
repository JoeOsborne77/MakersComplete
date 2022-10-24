require_relative './frame'

class TenthFrame < Frame
  attr_reader :roll_1, :roll_2, :roll_3
  def initialize(roll_1, roll_2, roll_3)
    @roll_1 = roll_1
    @roll_2 = roll_2
    @roll_3 = roll_3
  end
end