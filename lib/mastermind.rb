require 'pry'
require './lib/menu'
require './lib/game'
require './lib/messages'


class Mastermind

  attr_reader :menu, :game

  def initialize
    @menu = Menu.new
    @game = Game.new
  end

  def run                   # ===== FAKE 'seeing-is-believing' comments =======
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
        puts message         # Adios, Amigo

        if signal == :start_game
          feedback = game.start
        end

      elsif game.active?
        feedback = game.execute(input)

        if signal == :win
          # go back to main menu
          # feedback = menu.execute(input)
        end
      end
    end
    message = feedback[0]   # Messages.goodbye
    signal = feedback[1]    # :stop
    # puts message
  end

end


# if __FILE__ == $0
  mastermind = Mastermind.new
  mastermind.run
# end
