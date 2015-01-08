require './lib/messages'

class Menu

  def active?
    @active
  end

  def start
    @active = true
    return [Messages.welcome, :go]    # (Welcome: play, inst, quit)
  end

  def execute(input)
    case input
      when 'i' then [Messages.instructions, :continue]
      when 'q' then [Messages.goodbye, :stop]
      when 'p' then
        @active = false
        [Messages.play, :start_game]    # Play msg should show in game, not menu
    end
  end

end




# def play
#   puts Messages.play
#
#   input = gets.chomp.downcase
#
#   game1 = Game.new
#
#   while input != "q"
#
#     if input.length < 4
#       return puts Messages.guess_too_short
#     elsif input.length > 4
#       return puts Messages.guess_too_long
#     elsif input == @secret
#       return puts Messages.you_won
#
#     # elsif input.length == 4
#     #   result = game1.evaluate(input)
#     #   puts result
#     #   puts Messages.take_a_guess
#     #   input = gets.chomp.downcase
#
#       # result returned to 'RESULT' in play loop of mastermind.rb
#     # elsif input == "q"
#     end
#     break
#   end
# end






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
