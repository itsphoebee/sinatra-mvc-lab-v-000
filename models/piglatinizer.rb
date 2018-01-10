class PigLatinizer

  def to_pig_latin(sentence)
    new_text = sentence.split(" ").map do |word|
      piglatinize(word)
    end
    new_text.join(" ")
  end

  def piglatinize(word)
    vowels = ['a','e','i','o','u','A','E','I','O','U']
    if vowels.include?(word[0])
        word << 'way'
    else
      word << word.slice(0..1)+'ay'
      word[0..1] = ''
      word
    end
  end
end
#word find where the first vowel is
#cut off the letters before it and throw it at the end +'ay'
