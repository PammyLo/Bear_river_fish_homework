require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../river')
require_relative ('../bears')
require_relative ('../fish')

class RiverTest < MiniTest::Test

  def setup()
    @river_1 = River.new("Amazon", ["Nemo", "Oswald"])

    @fish_1 = Fish.new("Nemo")
    @fish_2 = Fish.new("Oswald")

    @bear_1 = Bear.new("Yogi", "Grizzly", [])

  end

  def test_can_river_lose_fish
    @river_1.lose_fish("Nemo")
    assert_equal(1, @river_1.fish.count)
  end

  def test_number_of_fish_in_river
    @river_1.total_fish(@fish)
    assert_equal(2, @river_1.fish.count)
  end

end
