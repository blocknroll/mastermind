require './lib/mastermind'

puts "Welcome to MASTERMIND"


input = ""
mastermind = Mastermind.new

while input != "q"
  puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  print "> "
  input = gets.chomp
  puts mastermind.execute(input)
end
puts "Goodbye!"
