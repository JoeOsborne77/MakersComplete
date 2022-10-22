class GrammarStats

  def initialize
    @arr_total = []

  end

  def check(text)
    fail "No text given!!" if text.empty?
    punctation = ["!",".","?"].include?(text[-1])
    if text.chr == text.chr.upcase && punctation
      @arr_total << "true"   
      return true 
    else 
      @arr_total << "false"     
      return false 
    end
  end

  def percentage_good
  ((@arr_total.count("true") / @arr_total.length.to_f) * 100).to_i
  end
end