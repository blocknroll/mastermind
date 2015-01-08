require './lib/game'

# Guesses are case insensitive
# If it’s 'q' or 'quit' then exit the game
# If it’s fewer than four letters, tell them it’s too short
# If it’s longer than four letters, tell them it’s too long
# If they guess the secret sequence, enter the end game flow below
# Otherwise give them feedback on the guess:

class Interface

  def play
    puts Messages.play

    input = gets.chomp.downcase

    game1 = Game.new

    while input != "q"

      if input.length < 4
        return puts Messages.guess_too_short
      elsif input.length > 4
        return puts Messages.guess_too_long
      elsif input == @secret
        return puts Messages.you_won

      # elsif input.length == 4
      #   result = game1.evaluate(input)
      #   puts result
      #   puts Messages.take_a_guess
      #   input = gets.chomp.downcase

        # result returned to 'RESULT' in play loop of mastermind.rb
      # elsif input == "q"
      end
      break
    end

  end

end






# WORKING, but craptastic =====================
#
# class Interface
#
#   def play
#     puts Messages.play
#
#     input = gets.chomp.downcase
#
#     game1 = Game.new
#
#     until input == 'q'
#       result = game1.evaluate(input)
#       puts result
#       puts Messages.take_a_guess
#       input = gets.chomp.downcase
#
#       # result returned to 'RESULT' in play loop of mastermind.rb
#     end
#
#   end
#
# end
