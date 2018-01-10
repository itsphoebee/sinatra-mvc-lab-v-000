class PigLatinizer

  def to_pig_latin(sentence)
    new_text = sentence.split(" ").map do |word|
      word.to_piglatinize
    end
    new_text.join(" ")
  end

  def to_piglatinize
    new_text.map do |word|
      if word.start_with?('a','e','i','o','u')
        word << 'ay'
      else word.split('')
        if word[1].include?('a'||'e'||'i'||'o'||'u')
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
    new_text
  end
end
