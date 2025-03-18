# EXERCISE 1
#   Create a class called MyCar.
#   
#   When you initialize a new instance or object of the class, 
#   allow the user to define some instance variables that tell us
#   the year, color, and model of the car.
#   
#   Create an instance variable that is set to 0 during instantiation
#   of the object to track the current speed of the car as well.
#   
#   Create instance methods that allow the car to 
#   speed up, brake, and shut the car off.
#   
# EXERCISE 2
#   Add an accessor method to your MyCar class to change and view the
#   color of your car. 
#   
#   Then add an accessor method that allows you to view, 
#   but not modify, the year of your car.

class MyCar
  attr_accessor :make, :model, :speed, :engine_status
  attr_accessor :color
  attr_reader :year

  def initialize(make, model, color, year)
    @make = make
    @model = model
    @color = color
    @year = year
    @speed = 0
    @engine_status = "off"
  end

  def make_and_model
    "#{make} #{model}"
  end

  def start_up
    if engine_status == "off"
      puts "#{make_and_model} is starting up..."
      self.engine_status = "on"

    elsif engine_status == "on"
      puts "#{make_and_model} is already running."
    end
  end

  def shut_down
    if engine_status == "on" && speed > 0
      puts "Bring #{make_and_model} to a complete stop before shutting it down."

    elsif engine_status == "on" && speed == 0
      puts "#{make_and_model} is shutting down..."
      self.engine_status = "off"

    elsif engine_status == "off"
      puts "#{make_and_model} is already shut down."
    end
  end

  def speed_up
    if engine_status == "on" 
      puts "#{make_and_model} is speeding up!"
      self.speed += 25

    elsif engine_status == "off"
      puts "#{make_and_model} isn't running."
    end
  end

  def brake
    if engine_status == "on" && speed > 0
      puts "#{make_and_model} is braking!"
      self.speed -= 25

    elsif engine_status == "on" && speed == 0
      puts "#{make_and_model} is already at a complete stop."

    elsif engine_status == "off"
      puts "#{make_and_model} isn't running."
    end
  end

  def current_speed
    puts "#{make_and_model} is now travelling #{speed} mph."
  end
end

# toyota test
toyota = MyCar.new("Toyota", "Corolla", "Blue", 2016)
# p toyota
# toyota.start_up

# 6.times do 
#   toyota.speed_up
#   toyota.current_speed
# end

# 7.times do 
#   toyota.brake
#   toyota.current_speed
# end
# toyota.shut_down

# honda test
honda = MyCar.new("Honda", "Civic", "Black", 2014)
# p honda
# honda.start_up

# 6.times do
#   honda.speed_up
#   honda.current_speed
# end

# 7.times do 
#   honda.brake
#   honda.current_speed
# end
# honda.shut_down

# exercise 2 tests
p toyota.year
p honda.year

toyota.color = "Yellow"
honda.color = "Red"
p toyota.color
p honda.color

  


