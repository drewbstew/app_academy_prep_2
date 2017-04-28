def index_of_first_vowel(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  word.split('').each.with_index do |char, idx|
    return idx if vowels.include?(char) && word[idx - 1] != 'q' #preserve 'qu'
  end
end

def pigify(word)
  idx = index_of_first_vowel(word)
  new_word = []
  new_word << word[idx..-1]
  new_word << word[0...idx] unless idx == 0
  new_word << 'ay'
  new_word.join
end

def translate(str)
  words = []
  str.split(' ').each do |word|
    words << pigify(word)
  end
  words.join(' ')
end
