gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'fizz_buzz'

class FizzBuzzTest < Minitest::Test

  def test_number
    fb = FizzBuzz.new
    assert fb.value(1) == 1
  end

  def test_multiple_3
    skip
    fb = FizzBuzz.new
    assert fb.value(9) == "Fizz"
  end

  def test_multiple_5
    skip
    fb = FizzBuzz.new
    assert fb.value(35) == "Buzz"
  end

  def test_multiple_3_and_5
    skip
    assert FizzBuzz.new.value(15) == "FizzBuzz"
  end
end
