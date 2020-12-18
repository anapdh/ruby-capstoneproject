# rubocop:disable Layout/LineLength

require_relative '../lib/bot'
require_relative '../lib/message'
require 'dotenv'
Dotenv.load('../lib/key.env')

puts "Hello there... The bot is running!\n
Now you can access the webpage https://web.telegram.org/#/im?p=@AnaOfZodiacs_bot to start using the bot, or simply search for 'Ana of Zodiacs' in your Telegram search area.\n
Press Ctrl + Z in your keyboard to stop executing."

Bot.new(ENV)

# rubocop:enable Layout/LineLength
