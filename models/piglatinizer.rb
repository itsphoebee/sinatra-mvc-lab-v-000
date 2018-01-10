class PigLatinizer

  def to_pig_latin(sentence)
    new_text = sentence.split(" ").map do |word|
      to_piglatinize(word)
    end
    new_text.join(" ")
  end

  def to_piglatinize(word)
    if word.start_with?('a','e','i','o','u')
        word << 'ay'
    elsif
      word[1].include?('a'||'e'||'i'||'o'||'u')
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
