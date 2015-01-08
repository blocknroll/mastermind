
# ==========================================================
class Board

  attr_accessor :secret

  def initialize
    @colors = ['R', 'G', 'B', 'W', 'O', 'P' ].shuffle
    @secret = "BBGB"
  end

  # def initialize
  #   @colors = ['R', 'G', 'B', 'W', 'O', 'P' ].shuffle
  #   @secret = @colors.map(0..3)
  # end

  def new_secret
    @secret
    # @secret = @colors.map(0..3)
  end

end



# ==========================================================
class Mastermind  #capture user input

  def initialize #(board)
    # @board = board
  end

  input = "BBGB"
  # input = gets.chomp

  def guess(input)
    # parts = input.split(" ")

    # secret = "BBGB"
    if input == "BBGB" #@board.secret
      "You win!"
    else
      "Guess again!"
    end
  end

  # def execute(input)
  #   parts = input.split(" ")
  #   operator = parts[0]
  #   num1 = parts[1].to_i
  #   num2 = parts[2].to_i


  # def execute(input)
  #   secret = "BBGB"
  #   if input == secret
  #     "You win!"
  #   else
  #     "Guess again!"
  #   end
  # end

end







# ==========================================================
# class Evaluator  #compares guess to secret
#
#   position matcher
#
#   color matcher
#
# end
