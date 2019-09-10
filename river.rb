class River

  attr_accessor :name, :fish

  def initialize(name, fish=[])
    @name = name
    @fish = fish
  end

  def lose_fish(fish)
    @fish.delete(fish)
  end

  def total_fish(fish)
    @fish.count
  end

end
