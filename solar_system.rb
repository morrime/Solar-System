require_relative 'planets'

class Solar_System
  attr_accessor :planets

  def initialize(planet)
    @planets = planet
  end

  def add_planet(planet)
    @planets << planet
    puts @planets
  end

  def print_props
    @planets.each_with_index do |planet, i|
    puts "\n\nPlanet #{ i + 1 }: #{ planet.name }"
    puts "        Color: #{ planet.color }
        Diameter: #{ planet.diameter } km
        Moons: #{ planet.moons }
        Day Length: #{ planet.day_length } hours
        Rotation Rate: #{ planet.rotation_rate } (in hours)\n"
    end
  end
end

mercury = Planets.new("Mercury", "gray", "4879", "0", "4222.6", "58.65")
venus = Planets.new("Venus", "pale yellow", "12,104", "0", "2802.0", "-243.00")
earth = Planets.new("Earth", "blue/green", "12,756", "1", "24.0", "1.00")
mars = Planets.new("Mars", "red", "6792", "2", "24.7", "1.03")
jupiter = Planets.new("Jupiter", "orange", "142,984", "67", "9.9", "0.41")
saturn = Planets.new("Saturn", "gold", "120,536", "62", "10.7", "0.44")
uranus = Planets.new("Uranus", "pale blue", "51,118", "27", "17.2", "-0.72")
neptune = Planets.new("Neptune", "pale blue", "49,528", "14", "16.1", "0.72")

 solar_system = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune]


 # DIDN'T FINISH OPTIONAL ENHANCEMENT:
 # instead of user_planet_choice you need to have them choose a number,
 # and have that number correspond to the array position. You'll have to do the
 # number they enter minus 1 to get the correct # and array position!


#  puts "Good Day! We're learning about planets.
#  Please enter the number corresponding to the planet you want to learn about."
#
# counter = 1
# solar_system.each do |planet|
#   puts "#{ counter }. #{planet.name}"
#   counter == counter += 1
# end
#
# user_choose_num = gets.chomp.to_i
# user_choose_num = nil # initialize the variable so you can invoke methods on it
# until user_choose_num.is_a?(Float) do
#   user_choose_num = Float(gets.chomp) rescue nil
#   if user_choose_num != nil
#     puts "#{ solar_system[user_choose_num - 1].print_props }"
#     break
#   else
#   puts "That's not a number! Try again. ENTER THE NUMBER."#   end
#   end


ss = Solar_System.new(solar_system)
puts ss.print_props
