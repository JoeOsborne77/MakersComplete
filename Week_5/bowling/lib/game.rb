require_relative './frame'
require_relative './tenth_frame'

class Game
  attr_reader :frames

  def initialize
    @frames = []
  end

  def calculate_current_score
    score = 0
    spare, strike, consecutive_strike = false

    @frames.each { |frame|
      score += frame.roll_1 if spare
      score += (frame.roll_1 + frame.roll_2) if strike
      score += (frame.roll_1) if consecutive_strike
      score += frame.roll_3 if frame.is_a?(TenthFrame)
      score += (frame.roll_1 + frame.roll_2)
      consecutive_strike = strike && frame.strike
      spare, strike = frame.spare, frame.strike
    }
    return score
  end


  def add_frame(roll_1, roll_2 = 0, roll_3 = 0)
    return "The game has finished" if @frames.length == 10
    return @frames << Frame.new(roll_1, roll_2) if @frames.length < 9
    return @frames << TenthFrame.new(roll_1, roll_2, roll_3) if @frames.length == 9
  end

end