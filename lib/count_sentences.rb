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
    #split if the regex matches, delete if array item is empty
    arr = self.split(/\.|\?|\!/).delete_if {|item| item == ""}
    arr.length
  end

end

s1 = String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...")
p s1.count_sentences
