gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'elevator'

class ElevatorTest < Minitest::Test
  def test_create_new_elevator
    assert Elevator.new
  end

  def test_new_elevator_current_floor
    skip
    assert Elevator.new.current_floor == 1
  end

  def test_up
    skip
    elevator = Elevator.new
    elevator.up = 10
    assert elevator.current_floor == 10
  end

  def test_down
    skip
    elevator = Elevator.new
    elevator.down = 3
    assert elevator.current_floor == 3
  end

  def test_greet_for_new_elevator
    skip
    elevator = Elevator.new
    assert elevator.greet.include?("1")
  end

  def test_greet_after_up
    skip
    elevator = Elevator.new
    elevator.up = 9
    assert elevator.greet.include?("9")
  end

  def test_greet_after_down
    skip
    elevator = Elevator.new
    elevator.down = 7
    assert elevator.greet.include?("7")
  end

  def test_greet_after_up_down
    skip
    elevator = Elevator.new
    elevator.up = 10
    elevator.down = 4
    assert elevator.greet.include?("4")
  end
end
