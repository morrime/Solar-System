class Planets
  attr_accessor :name, :color, :diameter, :moons, :day_length, :rotation_rate

  def initialize(n, c, d, m, dl, rr)
    @name = n
    @color = c
    @diameter = d
    @moons = m
    @day_length = dl
    @rotation_rate = rr
  end
end
