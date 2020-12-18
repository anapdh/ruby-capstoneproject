require_relative 'bot'
require 'telegram/bot'

# Class for quotes
class Quotes
  attr_reader :value, :menu

  def initialize
    @value = [
      'Genius is one percent inspiration and ninety-nine percent perspiration. Author: Thomas Edison',
      'You can observe a lot just by watching. Author: Yogi Berra',
      'A house divided against itself cannot stand. Author: Abraham Lincoln',
      'Difficulties increase the nearer we get to the goal. Author: Johann Wolfgang von Goethe',
      'Fate is in your hands and no one elses. Author: Byron Pulsifer',
      'Be the chief but never the lord. Author: Lao Tzu',
      'Nothing happens unless first we dream. Author: Carl Sandburg',
      'Well begun is half done. Author: Aristotle',
      'Peace comes from within. Do not seek it without. Author Buddha',
      'Life is change. Growth is optional. Choose wisely. Author: Karen Clark',
      'From error to error one discovers the entire truth. Author: Sigmund Freud',
      'Who sows virtue reaps honour. Author: Leonardo da Vinci'
    ]

    @menu = 'Return to /menu'
  end

  def select_quote(_quote)
    @value.sample
  end
end

