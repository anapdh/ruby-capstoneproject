require 'telegram/bot'
require_relative 'bot'

# Class for the horoscope messages
class ZodiacInfo
  attr_reader :aries, :taurus, :gemini, :cancer, :leo, :virgo, :libra, :scorpio, :sagittarius, :capricorn, :aquarius, :pisces, :repeat

  def initialize
    @aries = "You chose Aries! Let's see...\n
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

    @taurus = "You chose Taurus! Let's see...\n
Personality Traits: reliable, diligent and conservative
Strength: romantic, decisive, logical, diligent, ardent, patient, talented in art, perseverant, benevolent
Weakness: prejudiced, dependent, stubborn
Symbol: Bull
Element: Earth
Sign Ruler: Venus
Lucky Color: Pink
Lucky Number: 6
Jewelry: Emerald, Jade
Best Match: Capricorn, Virgo and Taurus
Celebrities: Karl Marx, William Shakespeare, Leonardo da Vinci, David Beckham, Al Pacino
See Also: Taurus Horoscope in 2020 
Chinese zodiac twins: Snake"

    @gemini = "You chose Taurus! Let's see...\n
Personality Traits: quick-witted, capricious and cheerful
Strength: multifarious, perspicacious, smart, cheerful, quick-witted, clement, charming
Weakness: fickle, gossipy, amphibian
Symbol: Twins
Element: Air
Sign Ruler: Mercury
Lucky Color: Yellow
Lucky Number: 7
Jewelry: Opal
Best Match: Aquarius, Libra and Gemini
Celebrities: John F. Kennedy, Queen Victoria
Chinese zodiac twins: Horse"

    @cancer = "You chose Cancer! Let's see...\n
Personality Traits: considerate, imaginative and sensitive
Strength: with strong sixth sense, subjective, gentle, swift, imaginative, careful, dedicated, perseverant, kind, caring
Weakness: greedy, possessive, sensitive, prim
Symbol: Crab
Element: Water
Sign Ruler: Moon
Lucky Color: Green
Lucky Number: 2
Jewelry: Pearl
Best Match: Pisces, Scorpio and Cancer
Celebrities: Alexander the Great, Raul Gonzalez
Chinese zodiac twins: Sheep"

    @leo = "You chose Leo! Let's see...\n
Personality Traits: enthusiastic, proud and arrogant
Strength: proud, charitable, reflective, loyal and enthusiastic
Weakness: arrogant, vainglorious, indulgent, wasteful, willful, and self-complacent
Symbol: Lion
Element: Fire
Sign Ruler: Sun
Lucky Colors: Red, Gold, Yellow
Lucky Number: 19
Jewelry: Gold
Best Match: Aries, Sagittarius and Leo
Celebrities: Napoleon Bonaparte, Deng Xiaoping, Alexander Dumas, Jennifer Lopez, Whitney Houston, Sarah Brightman
Chinese zodiac twins: Monkey"

    @virgo = "You chose Virgo! Let's see...\n
Personality Traits: elegant, perfectionist and picky
Strength: helping, elegant, perfectionist, modest, practical, clearheaded
Weakness: picky, nosey, tortuous, confining
Symbol: Virgin maiden
Element: Earth
Sign Ruler: Mercury
Lucky Color: Gray
Lucky Number: 7
Jewelry: Sapphire, Amber
Best Match: Sagittarius, Taurus and Gemini
Celebrities: Warren Buffett, Kobe Bryant, Michael Jackson, Rebecca De Mornay, Richard Gere
Chinese zodiac twins: Rooster"

    @libra = "You chose Libra! Let's see...\n
Personality Traits: equitable, charming and hesitant
Strength: idealistic, equitable, just, strong social skills, aesthetic, charming, artistic, beautiful, kind-hearted
Weakness: hesitant, narcissistic, lazy, perfunctory, freewheeling
Symbol: Scales
Element: Air
Sign Ruler: Venus
Lucky Color: Brown
Lucky Number: 3
Jewelry: Coral, Amber
Best Match: Aquarius, Gemini and Libra
Celebrities: Oscar Wilde, Hillary Duff, Italo Calvino, Evander Hoilrield
Chinese zodiac twins: Dog"

    @scorpio = "You chose Scorpio! Let's see...\n
Personality Traits: insightful, mysterious and suspicious
Strength: mysterious, rational, intelligent, independent, intuitive, dedicated, insightful, charming, sensible
Weakness: suspicious, fanatical, complicated, possessive, arrogant, self-willed, extreme
Symbol: Scorpion
Element: Water
Sign Ruler: Pluto, Mars
Lucky Colors: Purple, Black
Lucky Number: 4
Jewelry: Jasper, Black Crystal
Best Match: Cancer, Capricorn and Pisces
Celebrities: Charles de Gaulle, Bill Gates, Marie Curie, Hillary Clinton, Julia Roberts, Pablo Picasso
See Also: Scorpio Horoscope in 2020 
Chinese zodiac twins: Pig"

    @sagittarius = "You chose Sagittarius! Let's see...\n
Personality Traits: unconstrained, lively and rash
Strength: insightful, superior, rational, brave, beautiful, lively, lovely, optimistic
Weakness: forgetful, careless, rash
Symbol: Archer
Element: Fire
Sign Ruler: Jupiter
Lucky Color: Light Blue
Lucky Number: 6
Jewelry: Amethyst
Best Match: Virgo, Leo and Aries
Celebrities: Mark Twain, Beethoven, Taylor Swift, Britney Spears
Chinese zodiac twins: Rat"

    @capricorn = "You chose Capricorn! Let's see...\n
Personality Traits: perseverant, practical and lonely
Strength: excellent, intelligent, practical, reliable, perseverant, generous, optimistic, cute, persistent
Weakness: stubborn, lonely, and suspicious
Symbol: Goat
Element: Earth
Sign Ruler: Saturn
Lucky Colors: Brown, Black, Dark Green
Lucky Number: 4
Jewelry: Black Jade
Best Match: Virgo, Taurus and Pisces
Celebrities: Mao Zedong, Issac Newton, Martin Luther King, Nicholas Cage
Chinese zodiac twins: Ox"

    @aquarius = "You chose Aquarius! Let's see...\n
Personality Traits: smart, liberalistic and changeful
Strength: original, tolerant, ideal, calm, friendly, charitable, independent, smart, practical
Weakness: changeful, disobedient, liberalistic, hasty, rebel
Symbol: Water carrier
Element: Air
Sign Ruler: Uranus
Lucky Color: Bronze
Lucky Number: 22
Jewelry: Black Pearl
Best Match: Gemini, Libra and Aquarius
Celebrities: Francis Bacon, Thomas Edison, Agyness Deyn, Paris Hilton
Chinese zodiac twins: Tiger"

    @pisces = "You chose Pisces! Let's see...\n
Personality Traits: romantic, kind and sentimental
Strength: conscious, aesthetic, platonic, dedicated, kind, with good temper
Weakness: recessive, sentimental, indecisive, unrealistic
Symbol: Fish
Element: Water
Sign Ruler: Neptune
Lucky Color: White
Lucky Number: 11
Jewelry: Ivory Stone
Best Match: Scorpio, Cancer and Capricorn
Celebrities: George Washington, Zhou Enlai, Albert Einstein, Justin Bieber
Chinese zodiac twins: Rabbit"

@repeat = "\nWould you like to select another zodiac sign? /yes, /no"
  end
end
