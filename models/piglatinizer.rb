class PigLatinizer

  def to_pig_latin(sentence)
    new_text = sentence.split(" ").map do |word|
      piglatinize(word)
    end
    new_text.join(" ")
  end

  def piglatinize(word)
    w = word.downcase
    vowels = ['a','e','i','o','u']
    if vowels.include?(w[0])
        w << 'way'
    elsif
      vowels.include?(w[1])
      w << w.slice(0)+'ay'
      w[0] = ''
      w
    else
      word << word.slice(0..1)+'ay'
      word[0..1] = ''
      word
    end
  end
end
