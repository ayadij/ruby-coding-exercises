class String

  def to_pig_latin
    phrase = self.split()

    phrase.map! do |word|
      case word
      when /\b[aeiouAEIOU]/
        "#{word}ay".downcase
      when /((?i:(?![aeiou])[a-z])*)(.*)/
        "#{$2}#{$1}ay".downcase
      end
    end

    phrase.first.capitalize!
    p phrase.join(' ')
  end

end

print "Enter a phrase to convert to pig latin: "
answer = gets.chomp

answer.to_pig_latin