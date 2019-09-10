require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../bears')
require_relative ('../fish')
require_relative ('../river')

class BearTest < MiniTest::Test

  def setup()
    @bear_1 = Bear.new("Yogi", "Grizzly", [])
    @river_1 = River.new("Amazon", [@fish_1, @fish_2])
    @fish_1 = Fish.new("Nemo")
    @fish_2 = Fish.new("Oswald")

  end

  def test_can_bear_take_fish
    @bear_1.catch_fish(@fish_1.name)
    assert_equal(["Nemo"], @bear_1.stomach)
  end

  def test_can_bear_roar
    assert_equal("ROAR!", @bear_1.roar)
  end

  def test_how_many_fish_in_stomach
    @bear_1.fish_eaten(@fish_1)
    assert_equal(1, @bear_1.stomach.count)
  end

end
