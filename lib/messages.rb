module Messages

  def self.welcome
    "\nWelcome to MASTERMIND
    \nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def self.instructions
    "INSTRUCTIONS:

    The CODEMAKER will select a secret code...
    it consists of FOUR colors, randomly selected from the following:
    (r)ed, (g)reen, (blue), or (y)ellow
    example: bbgb

    Your task is to pick the correct sequence of colors...

    Are you ready to (p)lay -or- (q)uit?"
  end

  def self.play
    "I have generated a beginner sequence with four elements made up of:
    (r)ed, (g)reen, (b)lue, and (y)ellow.

    Use (q)uit at any time to end the game.

    What's your guess?  (example: bbgb)"
  end

  def self.take_a_guess
    "Take another guess -or- (q)uit."
  end

  def self.guess_too_short
    "Your guess is too short. Try FOUR colors..."
  end

  def self.guess_too_long
    "Your guess is too long. Try FOUR colors..."
  end

  def self.you_won
    "You won. Yay for humanity."
  end

  def self.goodbye
    "Adios, amigo!"
  end

end
