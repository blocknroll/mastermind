require './lib/menu'
require './lib/game'
require './lib/messages'


class Mastermind

  attr_reader :menu, :game

  def initialize
    @menu = Menu.new
    @game = Game.new
  end


  def run
    feedback = menu.start   # menu gets actived
    message = feedback[0]   # Messages.welcome
    signal = feedback[1]    # :go
    puts message            # (Welcome: play, inst, quit)

    until signal == :stop

      input = gets.chomp.strip.downcase

      if menu.active?
        feedback = menu.execute(input)
        message = feedback[0]
        signal = feedback[1]
        puts message            # Adios, Amigo

        if signal == :start_game
          feedback = game.start
        end

      elsif game.active?
        feedback = game.execute(input)

        if signal == :win
          # go back to main menu
        end
      end
    end
    message = feedback[0]   # Messages.goodbye
    signal = feedback[1]    # :stop
    puts message
  end


end


if __FILE__ == $0
  mastermind = Mastermind.new
  mastermind.run
end











# def false_eval(input)
#   @ce_num = 0
#   @cp_num = 0
#
#   @guess_ary = input.split('')
#   @mcode_ary = @mastercode.split('')
#
#   @guess_ary.each do
#     @mcode_ary.each do |m|
#       if guess_ary[0] == m
#         @ce_num += 1
#       end
#     @guess_ary.shift
#     end
#   end
#
# end




# WORKING, but craptastic =====================
# puts Messages.welcome
#
# input = gets.chomp.downcase
#
# interface = Interface.new
# # game1 = Game.new
#
#
# if input == 'p'
#   result = interface.play
#   puts result
#   puts Messages.take_a_guess
#   input = gets.chomp.downcase
#
# elsif input == 'i'
#   puts Messages.instructions
#   input = gets.chomp.downcase
#
#   until input == 'q' #|| 'quit'
#     result = interface.play   # this is a repeat from above: REFACTOR!
#     puts result
#     puts Messages.take_a_guess
#     input = gets.chomp.downcase
#   end
#
# elsif 'q'
# end





# WORKING, but craptastic =====================
# puts Messages.welcome
#
# input = gets.chomp.downcase
#
# interface = Interface.new

# # game1 = Game.new

# until input == 'q' #|| 'quit'
#
#   # GAME FLOW LOOP ==========================
#   if input == 'p' #|| 'play'
#     until input == 'q' #|| 'quit'
#       result = interface.play
#       puts result
#       puts "Take a guess - or (q)uit"
#       input = gets.chomp.downcase
#     end
#
#   # INSTRUCTIONS LOOP ==========================
#   elsif input == 'i' #|| 'instructions'
#     puts Messages.instructions
#
#     input = gets.chomp.downcase
#
#     until input == 'q' #|| 'quit'
#       result = interface.play   # this is a repeat from above: REFACTOR!
#       puts result
#       puts "Take a guess - or (q)uit"
#       input = gets.chomp.downcase
#     end
#   end
#
# end
