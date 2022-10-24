## Strikes

def play
if frame == 10 && strike? || spare?
tenth_frame
end
end

METHOD FOR STRIKE
def strike?
if @roll_1 == 10
strike_calc
end
end

def strike_calc
strike = @roll_1 _ 2 + @roll_2 _ 2 #needs to be next frame though - use index?
@scorecard << strike
end

def spare?
if @roll_1 + @roll_2 == 10
spare_calc
end
end

def spare_calc
spare = @roll_1 \* 2 #needs to be next frame though - use index?
@scorecard << spare
end

TENTH FRAME

def tenth_frame
#user gets another roll
strike?
end
end

### 10th frame

If the player rolls a strike or spare in the 10th frame they can roll the additional balls for the bonus. But they can never roll more than 3 balls in the 10th frame. The additional rolls only count for the bonus not for the regular frame count.

    10, 10, 10 in the 10th frame gives 30 points (10 points for the regular first strike and 20 points for the bonus).
    1, 9, 10 in the 10th frame gives 20 points (10 points for the regular spare and 10 points for the bonus).
