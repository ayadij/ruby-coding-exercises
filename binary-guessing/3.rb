class Guess
  def initialize
    p "Please pick a number from 1-25 and I will try to guess it"
    @select = gets.chomp!
    @int = rand(1..25)
    @floor = 0
    @ceiling = 25
  end

  def first_guess
    until @answer == ('Yes').downcase
      p "Is your number #{@int}? Or do I need to guess higher or lower?"
      @answer = gets.chomp!
        if @answer == ('Yes').downcase
          p "Ha, I figured it out!"
        elsif @answer == ('higher').downcase
          @floor = (@int + 1)
          @int = rand(@floor..@ceiling)
        elsif @answer == ('lower').downcase
          @ceiling = (@int - 1)
          @int = rand(@floor..@ceiling)
      end
    end
  end
end

new_guess = Guess.new
new_guess.first_guess