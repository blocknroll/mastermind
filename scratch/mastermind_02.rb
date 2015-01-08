
# ==========================================================
class Board

  attr_accessor :secret

  def initialize
    # @colors = ['R', 'G', 'B', 'W', 'O', 'P' ].shuffle
    # @secret = @colors[0..3]
    @secret = "BBGB"
  end

  # def new_secret
  #   @secret
  # end

end





# ==========================================================
class Mastermind  #capture user input

  def initialize
    # @board = board
    # @input = gets.chomp
  end

  def prompt
    "What is your guess?"
  end

  def guess(input)
    # parts = input.split(" ")
    secret = "BBGB"
    if input == secret  #@board.secret
      "You win!"
    else
      "Guess again!"
    end
  end

  # def execute(input)
  #   secret = "BBGB"
  #   if input == secret
  #     "You win!"
  #   else
  #     "Guess again!"
  #   end
  # end
end


if __FILE__ == $0

  puts "Welcome to MASTERMIND"

  input = ""
  mastermind = Mastermind.new

  while input != "q"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    print "> "
    input = gets.chomp
    puts mastermind.guess(input)
  end
  puts "Goodbye!"
end






# ==========================================================
# class Evaluator  #compares guess to secret
#
#   position matcher
#
#   color matcher
#
# end
