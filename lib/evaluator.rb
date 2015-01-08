require './lib/code_generator'


class Evaluator

  def evaluate(input, secret_code)
    p "secret_code = #{secret_code}"

    @correct_elements = 0
    @correct_positions = 0

    @guess_array = input.split('')
    @secret_code_array = secret_code.split('')

    element_counter(@guess_array)
    position_counter(@guess_array)
    execute(input)
  end

  def position_counter(guess_array)
    comparison_array = guess_array.zip(@secret_code_array)
    comparison_array.each do |x, y|
      if x == y
        @correct_positions += 1
      end
    end
  end

  def element_counter(guess_array)
    guess_array2 = guess_array.dup

    guess_array2.each do
      @secret_code_array.each do |secret_color|
        if guess_array2[0] == secret_color
          @correct_elements += 1
        end
        guess_array2.shift
      end
    end
  end

  def execute(input)
    if @guess_array == @secret_code_array
      p Messages.you_won
    else
      p "'#{input.downcase}' has #{@correct_elements} correct elements with #{@correct_positions} in the correct position, guess again!"

    end
  end

end
