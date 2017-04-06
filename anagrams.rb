require 'byebug'
def first_anagram?(word1, word2)
  possible_anagrams = []

  word1.chars.permutation.to_a.each do |word|
    possible_anagrams << word.join
  end
  possible_anagrams.each do |word|
    return true if word == word2
  end
  false
end

def second_anagram?(word1, word2) #n^2
  one = word1.chars
  two = word2.chars
  word1.each_char do |let| #n
    word2.each_char do |let2| #n
      if let2 == let
        one.delete_at(one.find_index(let))
        two.delete_at(two.find_index(let2))
        break
      end
    end
  end
  return true if one.empty? && two.empty?
  false
end

def third_anagram?(word1, word2) #n
  one = word1.each_char.sort #n
  two = word2.each_char.sort #n
  return true if one - two == []
  false
end

def fourth_anagram?(word1, word2) #n
  word1_hash = Hash.new(0)
  word2_hash = Hash.new(0)

  word1.each_char do |let| #n
    word1_hash[let] += 1
  end
  word2.each_char do |let| #n
    word2_hash[let] += 1
  end
  return true if word1_hash == word2_hash
  false
end
