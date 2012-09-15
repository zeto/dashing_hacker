class Array
  def mean
    empty? ? 0 : inject {|sum, number| sum += number} / 1.0 / count 
  end

  def median
    return nil if empty?
    if count % 2 == 0
      ar = sort
      (ar[count/2 - 1] + ar[count/2]) / 2.0
    else
      sort[count/2]
    end
  end

  def mode
  end
end