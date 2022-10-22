class Calculator

  def initialize 
    @numbers = []
  end

  def numbers(nums) 
    @numbers << nums
  end

  def add
    @numbers.sum
  end

  def multiply
    @numbers.inject(:*)
  end

  def divide
    @numbers.inject(:/)
  end

  def subtract
    @numbers.inject(:-)
  end
end