class Frame_1_2
  def initialize(roll, pins, total_score)
    @round = 1
    @roll = []
    @pins = []
    @total_score = 0
  end

  def first_throw
    12.times do
      puts "your total so far is #{@pins.sum}"
      strike_tally
      spare_tally

      puts "Please enter the score from your first roll from frame #{@round}"
      @roll_1 = gets.chomp.to_i
      if strike?
        strike_method
      else
        @pins << @roll_1
        @roll << 1
        second_throw
      end
    end
  end

  def second_throw
    puts "Please enter the score from your second roll from frame #{@round}"
    @roll_2 = gets.chomp.to_i

    if spare?
      spare_method
    else  
      @pins << @roll_2
      @roll << 2
      @round += 1
    end
  end

  def strike?
    @roll_1 == 10
  end

  def strike_method
    @round += 1
    @roll << 1
    @roll << 2
    @pins << @roll_1
  end

  def spare?
    @roll_1 + @roll_2 == 10
  end

  def spare_method
    @roll << 2
    @round += 1
    @pins << @roll_2
  end
  
  def strike_tally
    @pins.map!.with_index { |v,i| v == 10 && @pins[i+2] != nil ? v + (@pins[i+1] + @pins[i+2]) : v }   
  end

  def spare_tally
    @pins.map!.with_index { |v,i| 
      @pins[i+1] != nil && v + @pins[i+1] == 10 && i.even? ? v + @pins[i+1] : v 
    }   
  end

  def total
    puts "your closing score is #{@pins.sum}"
  end

  def test 
    puts "roll #{@roll}"
    puts "pins #{@pins}"
    puts "total #{@total_score}"
    puts "round #{@round}"
  end
end

frame = Frame_1_2.new(@roll, @pins, @total_score)
frame.first_throw
frame.test
frame.total