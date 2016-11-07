require('minitest/autorun')
require('minitest/rg')
require_relative('car')
require_relative('person')
require('pry-byebug')

class TestCar < Minitest::Test

  def setup
    @porsche = Car.new('black', 'boxster', 100, 0, @person, {})
    @person = Person.new('Patrick', 22)
  end

  def test_accelerate()
    @porsche.accelerate(100, 0)
    assert_equal(10, @porsche.speed)
    assert_equal(95, @porsche.fuel_level)
  end

  def test_brake()
    @porsche.brake(10)
    assert_equal(0, @porsche.speed)
  end

  def test_person_name
    assert_equal('Patrick',@person.name())
  end

  def test_person_age
    assert_equal(22,@person.age())
  end

  def pick_up_passengers
    @porsche.pick_up_passengers('Jeff', 26)
    assert_equal('Jeff', @passengers.keys[0])
  end

end