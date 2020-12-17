require 'telegram/bot'
require_relative 'message'

# Class for bot
class Bot
  attr_reader :token, :zodiac_sign

  def initialize
    @token = '1427773606:AAEtPuij38RRZeHp6cdcHtdk-Xb8lH2nokQ'
    @zodiac_sign = ZodiacInfo.new

    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text

        when '/start'

        bot.api.send_message(chat_id: message.chat.id, text: 
          "Hello, #{message.from.first_name}!\n
    Welcome to your Zodiac Info bot, created by Ana Paula Hübner!\n
    How to use the bot:\n 
    Use  /start to start or restart the bot\n 
    Use /stop to end the bot\n 
    Type '/' + the zodiac sign you wish to obtain information, or simply select the option below:\n
    /aries    /taurus    /gemini    /cancer\n
    /leo    /virgo    /libra    /scorpio\n
    /sagittarius    /capricorn    /aquarius    /pisces")

        when '/stop'

        bot.api.send_message(chat_id: message.chat.id, text: 
          "See you next time, #{message.from.first_name}!" , date: message.date)

        when '/aries'
        @zodiac_sign.aries
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.aries, date: message.date)
       
        when '/taurus'
        @zodiac_sign.taurus
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.taurus, date: message.date)

        when '/gemini'
        @zodiac_sign.gemini
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.gemini, date: message.date)

        when '/cancer'
        @zodiac_sign.cancer
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.cancer, date: message.date)

        when '/leo'
        @zodiac_sign.leo
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.leo, date: message.date)

        when '/virgo'
        @zodiac_sign.virgo
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.virgo, date: message.date)

        when '/libra'
        @zodiac_sign.libra
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.libra, date: message.date)

        when '/scorpio'
        @zodiac_sign.scorpio
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.scorpio, date: message.date)

        when '/sagittarius'
        @zodiac_sign.sagittarius
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.sagittarius, date: message.date)

        when '/capricorn'
        @zodiac_sign.capricorn
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.capricorn, date: message.date)

        when '/aquarius'
        @zodiac_sign.aquarius
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.aquarius, date: message.date)

        when '/pisces'
        @zodiac_sign.pisces
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.pisces, date: message.date)
      
        else bot.api.send_message(chat_id: message.chat.id, text: 
        "Invalid entry, #{message.from.first_name}! Please, use /start, /stop, or '/' + the zodiac sign of your choice.")
        end
      end
    end
  end
end