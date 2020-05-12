class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    sentence = self.split(/[.?!]/).reject do |item|
      item.empty?
    end.size
  end
end