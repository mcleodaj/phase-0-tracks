class GuessingGame
  attr_reader :guess_count
  attr_reader :is_over
  attr_reader :guesses_allowed
  attr_reader :win_condition

  def initialize(word)
    word=word.strip
    word=word.downcase
    @word_array=word.chars
    @guess_count=0
    @is_over=false
    @guess_array=[]
    @win_array=@word_array.uniq
    @length=@win_array.length
    @win_check_array=[]
  end

  def set_guesses
    @guesses_allowed=@length+5
    puts "You get #{@guesses_allowed} guesses!"
  end

  def get_guess(guess)
    if @guess_array.include?guess
      puts "You've already guessed that!"
    elsif guess==nil
      puts "Please enter a character"
    else
      @guess_array.push(guess)
      @guess_count+=1
      if @win_array.include?guess
        @win_check_array.push(guess)
      end
      self.check_end
      self.check_win
    end
  end

  def print_output
    output_array=[]
    for i in @word_array
      if @guess_array.include?i
        output_array.push(i)
      else
        output_array.push(" _ ")
      end
    end
  p output_array.join
  puts "You have #{@guesses_allowed-@guess_count} guesses left!"

  end

  def check_win
    if @win_array.sort==@win_check_array.sort
      @win_condition=true
      @is_over=true
    end
  end

  def check_end
    if @guesses_allowed==@guess_count
      @is_over=true
    end
  end


end

#Interface

puts "Lets play the guessing game!"
puts "Enter the word you'd like your opponent to guess!"
word=gets.chomp
game=GuessingGame.new(word)
game.set_guesses

while !game.is_over
  puts "What letter would you like to guess? (type 'quit' to quit at any time)"
  guess=gets.chomp
  if guess=='quit'
    puts "Sorry you have to go!"
    break
  else
    guess=guess.downcase
    guess=guess[0]
    game.get_guess(guess)
    game.print_output
  end
end

if game.win_condition==true
  puts "Congrats! You've won!"
else
  puts "Hah!  Nice try, maybe next time!"
end
