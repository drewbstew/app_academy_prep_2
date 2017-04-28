def echo(word)
  word
end

def shout(words)
  words.upcase
end

def repeat(word, times = 2)
  result = []
  times.times do
    result << word
  end
  result.join(' ')
end

def start_of_word(str, letters)
  str[0...letters]
end

def first_word(str)
  str.split(' ').first
end

def titleize(str)
  words = []
  str = str.split(' ')
  str.each do |word|
    if little_word?(word)
      words << word
    else
      words << word.capitalize
    end
  end
  words[0].capitalize!
  words.join(' ')
end

def little_word?(word)
  little_words = [
    "and",
    "the",
    "over"
  ]
  little_words.include?(word.downcase)
end
