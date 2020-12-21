# rubocop: disable Metrics/AbcSize,Metrics/BlockLength,Metrics/CyclomaticComplexity,Metrics/MethodLength

require 'telegram/bot'
require_relative 'message'
require_relative 'quotes'

# Class for bot
class Bot
  private

  attr_reader :token, :zodiac_sign

  def initialize
    @token = '1427773606:AAG-Jk78nFMY2XQJdzCto3YiWRGHc_s6U1U'
    @zodiac_sign = ZodiacInfo.new
    @quote = Quotes.new
    show_messages
  end
end

def show_messages
  Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
      case message.text

      when '/start', '/menu'
        bot.api.send_message(chat_id: message.chat.id, text:
          "Hello, #{message.from.first_name}!\n
Welcome to Ana of Zodiacs, a Ruby project created by Ana Paula Hübner.\n
Here's how to use the bot:\n
  • Use  /start to start or the bot\n
  • Use /menu to return to this message\n
  • Use /stop to end the bot\n
  • Want to receive your quote of the day? Type /quote\n
  • Type ' / ' + the zodiac sign you wish to obtain information, or simply select one of the options below:\n
      /aries    /taurus    /gemini    /cancer\n
      /leo    /virgo    /libra    /scorpio\n
      /sagittarius    /capricorn    /aquarius    /pisces")

      when '/aries'
        @zodiac_sign.aries
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.aries, date: message.date)
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.repeat, date: message.date)

      when '/taurus'
        @zodiac_sign.taurus
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.taurus, date: message.date)
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.repeat, date: message.date)

      when '/gemini'
        @zodiac_sign.gemini
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.gemini, date: message.date)
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.repeat, date: message.date)

      when '/cancer'
        @zodiac_sign.cancer
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.cancer, date: message.date)
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.repeat, date: message.date)

      when '/leo'
        @zodiac_sign.leo
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.leo, date: message.date)
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.repeat, date: message.date)

      when '/virgo'
        @zodiac_sign.virgo
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.virgo, date: message.date)
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.repeat, date: message.date)

      when '/libra'
        @zodiac_sign.libra
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.libra, date: message.date)
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.repeat, date: message.date)

      when '/scorpio'
        @zodiac_sign.scorpio
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.scorpio, date: message.date)
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.repeat, date: message.date)

      when '/sagittarius'
        @zodiac_sign.sagittarius
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.sagittarius, date: message.date)
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.repeat, date: message.date)

      when '/capricorn'
        @zodiac_sign.capricorn
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.capricorn, date: message.date)
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.repeat, date: message.date)

      when '/aquarius'
        @zodiac_sign.aquarius
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.aquarius, date: message.date)
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.repeat, date: message.date)

      when '/pisces'
        @zodiac_sign.pisces
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.pisces, date: message.date)
        bot.api.send_message(chat_id: message.chat.id, text: @zodiac_sign.repeat, date: message.date)

      when '/yes'
        bot.api.send_message(chat_id: message.chat.id, text:
          "Alright #{message.from.first_name}, type or select another zodiac sign:\n
    /aries    /taurus    /gemini    /cancer\n
    /leo    /virgo    /libra    /scorpio\n
    /sagittarius    /capricorn    /aquarius    /pisces")

      when '/quote'
        @quote.select_quote(@value)
        bot.api.send_message(chat_id: message.chat.id, text: @quote.select_quote(@value), date: message.date)
        bot.api.send_message(chat_id: message.chat.id, text: @quote.menu, date: message.date)

      when '/stop', '/no'
        bot.api.send_message(chat_id: message.chat.id, text:
          "Thanks for accessing, #{message.from.first_name}! See you next time :)", date: message.date)

      else bot.api.send_message(chat_id: message.chat.id, text:
        "Invalid entry!
Please, use /start, /stop, or ' / ' + the zodiac sign of your choice.")
      end
    end
  end
end

# rubocop: enable Metrics/AbcSize,Metrics/BlockLength,Metrics/CyclomaticComplexity,Metrics/MethodLength
