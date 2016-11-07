class Car
  attr_reader :colour, :model, :speed, :fuel_level, :driver
  def initialize(colour, model, fuel_level, speed, driver, passengers)
    @colour = colour
    @model = model
    @fuel_level = fuel_level
    @speed = speed
    @driver = driver
    @passengers = passengers
  end

  def accelerate(fuel_level, speed)
    @fuel_level -= 5
    @speed += 10
  end

  def brake(speed)
   @speed -=10 if @speed >= 10
   @speed -= @speed if @speed < 10
  end

  def pick_up_passengers(name, age)
    @passengers.push(name, age)
  end

end