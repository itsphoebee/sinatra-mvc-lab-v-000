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
  #  else
  #    a = word.split(/([aeiouAEIOU].*)/)
  #    a[1] + n[0] + 'ay'
    end
  end
end
