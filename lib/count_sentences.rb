require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    new_str = self.squeeze
    count = new_str.count(".") + new_str.count("?") + new_str.count("!")
    count
  end

end