require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test
  def test_valid_hash
    # arrange
    team = Team.new('Thunder', 5, ['David', 'John', 'Tom'])

    # act
    expected = {team_name: 'Thunder', level: 5, points: 0}
    actual = team.to_hash

    # assert
    assert_equal(expected, actual)
  end

  def test_invalid_hash
    # arrange
    team = Team.new('Thunder', 4, ['David', 'John', 'Tom'])

    # act
    expected = {team_name: 'Thunder', level: 5, points: 0}
    actual = team.to_hash

    # assert
    refute_equal(expected, actual)
  end
end
