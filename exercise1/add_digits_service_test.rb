require 'minitest/autorun'
require_relative 'add_digits_service'

class AddDigitsServiceTest < Minitest::Test
  def test_on_one_digit
    assert_equal 7, AddDigitsService.new(value: 7).call
  end

  def test_on_two_digits
    assert_equal 7, AddDigitsService.new(value: 16).call
  end

  def test_on_three_digits
    assert_equal 8, AddDigitsService.new(value: 899).call
  end

  def test_on_ten_digits
    assert_equal 9, AddDigitsService.new(value: 9999999999).call
  end
end