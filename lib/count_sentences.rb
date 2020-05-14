# frozen_string_literal: true

require 'pry'

class String
  def sentence?
    # it is going to return true or false if the last character is a '.'
    # we access the last character of a string using bracket notation and passing -1
    self[-1] == '.'
  end

  def question?
    self[-1] == '?'
  end

  def exclamation?
    self[-1] == '!'
  end

  def count_sentences
    # started a local var to stored the count of each sentence
    count = 0
    # split it in '?', '.', '!' using regex. then iterate the array
    # and check if is an empty string, if its not then increment the count var
    split(/\?|\.|!/).each { |char| count += 1 if char != '' }
    # finally return count
    count
  end
end
