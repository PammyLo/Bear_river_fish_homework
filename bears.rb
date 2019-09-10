class Bear

  attr_accessor :name, :type, :stomach, :roar

  def initialize(name, type, stomach=[])
    @name = name
    @type = type
    @stomach = stomach
    @roar = ""
  end

  def catch_fish(fish_to_be_eaten)
    @stomach << (fish_to_be_eaten)
  end

  def roar
    return "ROAR!"
  end

  def fish_eaten(fish)
    @stomach.count
  end

end
