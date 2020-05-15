require 'pry'

class String

  def sentence?
    if
      self.end_with?(".")
      true
    else
      false
  end

  
    
  end

  def question?
    if
      self.end_with?("?")
      true
    else
      false
    end

  end

  def exclamation?
    if 
      self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    sentences = self.split(/[.!?]/)
    sentences.select.with_index do |one, two|
      if one == ""
        sentences.slice!(two)
      end
    end
    

    sentences.length

  end
end