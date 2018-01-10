class PigLatinizer

  def to_pig_latin(sentence)
    new_text = sentence.split(" ").map do |word|
      piglatinize(word.downcase)
    end
    new_text.join(" ")
  end

  def piglatinize(word)
    vowels = ['a','e','i','o','u']
    if vowels.include?(word[0])
        word << 'way'
    elsif
      vowels.include?(word[1])
      word << word.slice(0)+'ay'
      word[0] = ''
      word
    else
      word << word.slice(0..1)+'ay'
      word[0..1] = ''
      word
    end
  end
end
