require 'telegram/bot'
require_relative 'bot'

# Class for the messages
class Horoscope
  attr_reader :aries, :taurus, :gemini, :cancer, :leo, :virgo, :libra, :scorpio, :sagittarius, :capricorn, :aquarius, :pisces

  def initialize
    @aries = 1
    @taurus = 3
    @gemini = 3
    @cancer = 4
    @leo = 5
    @virgo = 5
    @libra = 6
    @scorpio = 7
    @sagittarius = 8
    @capricorn = 9
    @aquarius = 10
    @pisces = 11
  end
end