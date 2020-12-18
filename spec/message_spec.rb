# frozen_string_literal: true

# rubocop:disable Layout/LineLength

require_relative '../lib/message'

describe ZodiacInfo do
  context '#initialize' do
    let(:aries) { ZodiacInfo.new }
    it 'displays the zodiac sign information' do
      expect(aries.aries).to eq(
        "You chose Aries! Let's see...\n
Personality Traits: energetic, candid and willful
Date of Birth: March 21 - April 19
Strength: hopeful, active, energetic, honest, versatile, brave, adventurous, passionate, generous, cheerful, argumentative, curious
Weakness: impulsive, naive, self-willed, belligerent, impatient
Symbol: Ram
Element: Fire
Sign Ruler: Mars
Lucky Color: Red
Lucky Number: 5
Jewelry: Ruby
Best Match: Leo, Sagittarius and Aries
Celebrities: Hans Christian Andersen, Jackie Chan, Mariah Carey, Marlon Brando, Dennis Quaid
Chinese zodiac twins: Dragon"
      )
    end
  end
end

# rubocop:enable Layout/LineLength
