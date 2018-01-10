class PigLatinize
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def to_piglatinize
    new_text = @text.split(' ')
    new_text.map do |word|
      if word.start_with?('a','e','i','o','u')
        word << 'ay'
      elsif 
        word << word.slice(0)+'ay'
        word[0] = ''
        word
      end
    end
  end
end
