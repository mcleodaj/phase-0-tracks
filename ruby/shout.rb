module Shout
  def yell_confusedly(words)
     puts (words + "!?!?!?") 
   end

  # def self.yell_angrily(words)
  #   words + "!!!" + " :("
  # end

  # def self.yell_happily(words)
  #   words + "!!!!!!" + " :D"
  # end
end

class Anchorman
  include Shout
end

class Stepbrother
  include Shout
end

ron_burgandy=Anchorman.new
ron_burgandy.yell_confusedly("I'm Ron Burgandy")

brennan=Stepbrother.new
brennan.yell_confusedly("Did we just become best friends")
