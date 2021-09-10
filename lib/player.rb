class Player
  attr_reader :name, :points
  DEFAULT_HP = 60

  def initialize(name, points = DEFAULT_HP)
    @name = name
    @points = points
  end  

  def reduce_hit_points
    @points -= 10
  end

end