require 'minitest/autorun'
require_relative 'add_digits_service'

class AddDigitsServiceTest < Minitest::Test
  def test_on_two_digits
    assert_equal 7, AddDigitsService.new(value: 16)
  end
end