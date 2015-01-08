require './lib/code_generator'
require './lib/messages'
require './lib/validator'
require './lib/evaluator'

class Game

  attr_reader :secret, :evaluator, :secret_code

  def initialize
    @validator = Validator.new
    @evaluator = Evaluator.new
    # @code_generator = CodeGenerator.new
    # @secret = @code_generator.generate
  end

  def active?
    @active
  end

  def start
    @active = true
    @code_generator = CodeGenerator.new
    @secret_code = @code_generator.generate    # generate new secret
    return [Messages.play, :go]           # 'take a guess...''
  end

  def execute (input)
    feedback = @validator.validate(input)

    if feedback[1] == :ready_for_eval
      evaluator.evaluate(input, secret_code)
    else feedback[1] != :ready_for_eval
      feedback
    end

    # Rachel's code:
    # feedback = []
    # puts feedback
    # until feedback[1] == :ready_for_eval
    #   puts feedback
    #
    # end
    # if input = @secret_code
    #   # ["Winner message!", :win]
    # else
    #   feedback
  end

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



# if input == secret
#   "You win!"
# else
#   "Guess again!"
# end
