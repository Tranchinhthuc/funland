module ApplicationHelper
  def print_word word
    "#{word.origin}(#{word.meaning})"
  end

  def print_words words
    result = ""
    words.each.with_index do |word, index|
      result << h6("#{index + 1}. #{print_word(word)}")
    end
    nil
  end
end
