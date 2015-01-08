require './lib/code_generator'

class Validator

  def validate(input)
    if input.length < 4
      [Messages.guess_too_short, :signal]

    elsif input.length > 4
      [Messages.guess_too_long, :signal]
      # return puts Messages.guess_too_long

    elsif input.length == 4   #@secret.length
      ["Just right", :ready_for_eval]
    end
  end
end

# could use many more validations here...
