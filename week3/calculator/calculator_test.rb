gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'calculator'

class CalculatorTest < Minitest::Test

  def test_calculator_takes_two_numbers
    assert Calculator.new(4, 5)
  end

  def test_add
    skip
    calculator = Calculator.new(3, 2)
    assert calculator.add == 5
  end

  def test_substract
    skip
    calculator = Calculator.new(3, 6)
    assert calculator.substract == -3
  end

  def test_multiply
    skip
    calculator = Calculator.new(2, 7)
    assert calculator.multiply == 14
  end

  def test_divide
    skip
    calculator = Calculator.new(8, 4)
    assert calculator.divide == 2
  end

end
