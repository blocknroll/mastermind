require './lib/code_generator'
require './lib/messages'
require './lib/validator'
require './lib/evaluator'

class Game

  attr_reader :secret, :evaluator, :secret_code

  def initialize
    @validator = Validator.new
    @evaluator = Evaluator.new
  end

  def active?
    @active
  end

  def start
    @active = true
    @code_generator = CodeGenerator.new
    @secret_code = @code_generator.generate   # generate new secret
    return [Messages.play, :go]               # 'take a guess...''
  end

  def execute (input)
    feedback = @validator.validate(input)

    if feedback[1] == :ready_for_eval
      evaluator.evaluate(input, secret_code)

    else feedback[1] != :ready_for_eval
      p feedback[0]
    end
  end

end
