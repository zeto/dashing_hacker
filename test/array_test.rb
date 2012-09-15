require 'minitest/autorun'

class ArrayTest < MiniTest::Unit::TestCase

  def setup
    @array_a = []
    @array_b = [1,2,3,4,5]
    @array_c = [1,2,1]
    @array_d = [0.5,1.3,-1.4,1/3,1.3]
    @array_e = [4,-3,1,1,45.4,9999999.999]
  end

  def test_mean
    assert @array_a.mean == 0
    assert @array_b.mean == 3
    assert @array_c.mean == 4/3.0
    assert @array_d.mean == 0.40666666666667
    assert @array_e.mean == 1666674.73316667
  end

  def test_median
    assert @array_a.median == 0
    assert @array_b.median == 0
    assert @array_c.median == 0
    assert @array_d.median == 0
    assert @array_e.median == 0
  end

  def test_mode
    assert @array_a.mode == 0
    assert @array_b.mode == 0
    assert @array_c.mode == 0
    assert @array_d.mode == 0
    assert @array_e.mode == 0
  end
end