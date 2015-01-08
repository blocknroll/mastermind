class Game

  attr_reader :secret

  def initialize
    @secret
  end

  def secret
    @mastercode = []
    palate = ['R', 'G', 'B', 'Y']

    4.times do
      @mastercode << palate.sample
    end

    @mastercode = @mastercode.join

    # @secret = "bbgb"
  end



  # def evaluate(input)
  #   secret      = "bbgb"
  #   secret_arr  = secret.split("")
  #   guess       = input.split("")
  #   @evaluation = []
  #
  #   if secret_arr[0] == guess[0]
  #     @evaluation << "Red"
  #   elsif secret_arr[0] != guess[0]
  #     @evaluation << "_"
  #
  #   elsif secret_arr[1] == guess[1]
  #     @evaluation << "Red"
  #   elsif secret_arr[1] != guess[1]
  #     @evaluation << "_"
  #
  #   elsif secret_arr[2] == guess[2]
  #     @evaluation << "Red"
  #   elsif secret_arr[2] != guess[2]
  #     @evaluation << "_"
  #
  #   elsif secret_arr[3] == guess[3]
  #     @evaluation << "Red"
  #   elsif secret_arr[3] != guess[3]
  #     @evaluation << "_"
  #
  #     puts evalution
  #   end
  #
  # end

end


# if input == secret
#   "You win!"
# else
#   "Guess again!"
# end



# def play
#   "Pick FOUR of the following colors:
#   (R)ed, (G)reen, (Blue), (Y)ellow, (O)range, or (P)urple
#
#   example: BBGB
#   "
# end
