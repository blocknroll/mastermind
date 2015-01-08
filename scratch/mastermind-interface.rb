# require_relative 'messages'
# require_relative 'interface'
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
