class Array
  def mean
    empty? ? 0 : inject {|sum, number| sum += number} / 1.0 / count 
  end

  def median
    return nil if empty?
    sorted = sort
    if count % 2 == 0
      (sorted[count/2 - 1] + sorted[count/2]) / 2.0
    else
      sorted[count/2]
    end
  end

  def mode
    return nil if empty?
    number_counts = Hash.new
    each do |number|
      if number_counts.has_key?(number)
        number_counts[number] += 1
      else
        number_counts[number] = 1
      end
    end

    max = number_counts.values.max
    mode = number_counts.map {|number,count| number if count == max}.compact
    mode.count == 1 ? mode.first : mode
  end
end