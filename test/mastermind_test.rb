# require 'minitest/autorun'
# require 'minitest/pride'
# require './lib/mastermind'
# # require './lib/board'
#
# class MastermindTest < Minitest::Test
#
#   def test_it_exists
#     skip
#     assert MastermindTest
#   end
#
#   def test_it_wins
#     skip
#     mm = Mastermind.new
#     result = mm.guess("BBGB")
#     assert result.downcase.include?("win")
#   end
#
#   def test_board_exists
#     skip
#     board = Board.new
#     assert Board
#   end
#
#   def test_it_creates_a_secret
#     skip
#     board = Board.new
#     assert_equal "BBGB", board.secret
#   end
#
#   # def test_it_picks_four_of_six_colors
#   #   board = Board.new
#   #   secret = board.new_secret
#   #   assert_equal ['R', 'G', 'B', 'Y'], secret
#   # end
#
#   def test_it_prompts_the_user_for_a_guess
#     skip
#     board = Board.new
#     mm = Mastermind.new
#     assert_equal "What is your guess?", mm.prompt
#   end
#
# end
