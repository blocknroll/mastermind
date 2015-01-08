require './lib/code_generator'

class Validator

  def validate(input)
    if input.length < 4
      [Messages.guess_too_short, :signal]

    elsif input.length > 4
      [Messages.guess_too_long, :signal]

    elsif input.length == 4
      ["Just right", :ready_for_eval]
    end
  end
end

# need more validations here...
