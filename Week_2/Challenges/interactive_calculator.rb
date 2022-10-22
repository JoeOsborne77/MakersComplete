#Test drive a class that behaves like this:

class InteractiveCalculator
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will subtract two numbers."
    @io.puts "Please enter a number"
    first_num = @io.gets.to_i
    @io.puts "Please enter another number"
    second_num = @io.gets.to_i
    @io.puts "Here is your result:"
    @io.puts "#{first_num} - #{second_num} = #{first_num - second_num}"
        
  end

end

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1