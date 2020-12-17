require 'telegram/bot'
# require 'net/http'
# require 'json'
require_relative 'bot'

# Class for the messages
class Horoscope
  attr_reader :aries, :taurus, :gemini, :cancer, :leo, :virgo, :libra, :scorpio, :sagittarius, :capricorn, :aquarius, :pisces
  # @values = nil

  # def initialize
  #   @values = horoscope
  #   horsocope
  # end

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

  # def make_the_request
  #   url = 'https://type.fit/api/quotes'
  #   uri = URI(url)
  #   response = Net::HTTP.get(uri)
  #   response = JSON.parse(response)
  #   response
  # end

  def select_sign(sign)
    sign = sign.sample
    sign
  end
end

# Aries, Taurus, Gemini, Cancer, Leo, Virgo, Libra, Scorpio, Sagittarius, Capricorn, Aquarius and Pisces