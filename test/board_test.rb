require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

class BoardTest < Minitest::Test

  def test_it_exists
    assert Board
  end

  def test_it_creates_a_board
    board = Board.new
  end

  def test_it_picks_four_colors
    board = Board.new
    secret = board.code['R', 'G', 'B', 'Y']
    assert_equal ['R', 'G', 'B', 'Y'], secret
  end

end
