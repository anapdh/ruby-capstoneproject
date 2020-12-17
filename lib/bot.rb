require 'telegram/bot'
require_relative 'message'

# Class for bot
class Bot
  attr_reader :token, :zodiac_sign

  def initialize
    @token = '1280524818:AAHsoJ04LU76oK9UNEWUBuudlBJ_llfq034'
    @zodiac_sign = Horoscope.new

    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text

        when '/start'

        bot.api.send_message(chat_id: message.chat.id, text: 
          "Hello, #{message.from.first_name}!\n
    Welcome to your Horoscope bot, created by Ana Paula Hübner!\n
    How to use the bot:\n 
    Use  /start to start the bot\n 
    Use /stop to end the bot\n 
    Use /horoscope to get a diffrent motivational quote everytime you request")

        when '/stop'

        bot.api.send_message(chat_id: message.chat.id, text: 
          "See you next time, #{message.from.first_name}!" , date: message.date)

       when '/aries'
        @zodiac_sign.aries
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.aries, date: message.date)
        # values = Horoscope.new
        # value = values.select_random
        # bot.api.send_message(chat_id: message.chat.id, text: "#{value['text']}", date: message.date)
       else bot.api.send_message(chat_id: message.chat.id, text: 
        "Invalid entry, #{message.from.first_name}, you need to use /start, /stop or /horoscope")
        end
      end
    end
  end
end