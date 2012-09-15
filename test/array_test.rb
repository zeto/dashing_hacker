require 'minitest/autorun'
require 'array'

class ArrayTest < MiniTest::Unit::TestCase

  def setup
    @array_a = []
    @array_b = [1,2,3,4,5]
    @array_c = [1,2,1]
    @array_d = [0.5,1.3,-1.4,1/3.0,1.3]
    @array_e = [4,-3,1,1,45.4,9999999.999]
  end

  def test_mean
    assert @array_a.mean == 0
    assert @array_b.mean == 3
    assert @array_c.mean == 4/3.0
    assert @array_d.mean.to_s[0..15] == '0.40666666666666'
    assert @array_e.mean.to_s[0..15] == '1666674.73316666'
  end

  def test_median
    assert @array_a.median == nil
    assert @array_b.median == 3
    assert @array_c.median == 1
    assert @array_d.median == 0.5
    assert @array_e.median == 0
  end

  def test_mode
    assert @array_a.mode == nil
    assert @array_b.mode == [1,2,3,4,5]
    assert @array_c.mode == 1
    assert @array_d.mode == 1.3
    assert @array_e.mode == 1
  end
end