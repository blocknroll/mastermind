require './lib/messages'

class Menu

  def active?
    @active
  end

  def start
    @active = true
    return [Messages.welcome, :go]      # (Welcome: play, inst, quit)
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
