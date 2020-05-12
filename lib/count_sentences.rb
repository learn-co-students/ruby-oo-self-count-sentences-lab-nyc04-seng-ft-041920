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
      arr = self.split(/\.|\?|\!/).reduce(0) do |total, i|
        if i != ""
          total += 1 
        end 
        total 
      end 
     
  end
end