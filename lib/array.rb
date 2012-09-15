class Array
  def mean
    empty? ? 0 : inject {|sum, number| sum += number} / 1.0 / count 
  end

  def median
  end

  def mode
  end
end