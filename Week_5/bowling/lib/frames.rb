class Frames
  def initialize(frame, roll, pins, total_score)
    @frame = []
    @roll = []
    @pins = []
    @total_score = 0
    @individual_frame = 0
  end

  def first_throw
    while @frame.count < 12 do
      if @frame.count == 10
        total
      end

      puts "Please enter the score from your first roll from frame #{@frame[-1]}"
      @roll_1 = gets.chomp.to_i

      if strike?
        @individual_frame += 1
        @frame << @individual_frame
        strike_method
      else
        @pins << @roll_1
        @roll << 1
        second_throw
      end
    end
  end

  def second_throw

    puts "Please enter the score from your second roll from frame #{@frame[-1]}"
    @roll_2 = gets.chomp.to_i
    
    if spare?
      @individual_frame += 1
      @frame << @individual_frame
      spare_method
    else
      @individual_frame += 1
      @frame << @individual_frame
      @pins << @roll_2
      @roll << 2
      first_throw
    end
  end

  def strike?
    @roll_1 == 10
  end

  def strike_method
    @pins << @roll_1
    @pins << 0 # pins array becomes [10, 0]
    first_throw
  end

  def spare?
    @roll_1 + @roll_2 == 10
  end

  def spare_method
     @pins << @roll_1
     @pins << @roll_2
     first_throw
  end

  def total
    #strike
    puts @pins
    strike = @pins.map.with_index { |pin, idx| if pin == 10 && idx.even?
      pin[+2]*2
      pin[+3]*2 
     end 
    }

    #spare
    spare = @pins.map.with_index { |pin, idx| if pin + pin[+1] == 10
      pin[+1]*2
     end 
    }
    puts "Thanks for playing. Your total is #{@pins.sum + spare.sum + strike.sum}"
  end

  def tenth_frame
    # user gets another roll
    strike?
  end
end

app = Bowling.new(@frame, @roll, @pins, @total_score)
app.first_throw