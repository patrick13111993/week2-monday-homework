require('minitest/autorun')
require('minitest/rg')
require_relative('person')

class TestPerson < Minitest::Test

  def setup
    @person = Person.new('Patrick', 22)
  end

  def test_person_name
    assert_equal('Patrick',@person.name)
  end

  def test_person_age
    assert_equal(22,@person.age)
  end
end

