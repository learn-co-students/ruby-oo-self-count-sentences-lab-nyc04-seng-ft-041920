require 'pry'

class String

  def sentence?
    if self.end_with?(".") 
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    sentences = self.split(/[.!?]/)
    sentences.select.with_index do |ele, ind|
      if ele == ""
        sentences.slice!(ind)
      end
    end
    # binding.pry

    sentences.length
  end
end