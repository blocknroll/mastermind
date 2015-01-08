require_relative 'messages'
require_relative 'interface'
# require_relative 'game'

puts Messages.welcome

input = gets.chomp.downcase

interface = Interface.new

until input == "q"

  if input == "p"
    # game = Game.new
    result = interface.play
    puts result
    puts Messages.take_a_guess
    input = gets.chomp.downcase

  elsif input == "i"
    puts Messages.instructions
    input = gets.chomp.downcase

  end
  puts "Goodbye"

end




# def generate
#   @mastercode = []
#   palate = ['R', 'G', 'B', 'Y']
#
#   4.times do
#     @mastercode << palate.sample
#   end
#
#   @mastercode = @mastercode.join
# end
#
#
def false_eval(input)
  @ce_num = 0
  @cp_num = 0

  @guess_ary = input.split('')
  @mcode_ary = @mastercode.split('')

  @guess_ary.each do
    @mcode_ary.each do |m|
      if guess_ary[0] == m
        @ce_num += 1
      end
    @guess_ary.shift
    end
  end

end




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
