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

  # def count_sentences
  #   count = 0
    
  #     self.split(//).map do |each_let|
  #     if each_let == "." 
  #       count += 1
  #     elsif each_let == "?" 
  #         count += 1
  #     elsif each_let == "!" 
  #         count += 1
  #     end
  #     #binding.pry
  #     end
  #    count
  #     end
  def count_sentences
   
    #self.split(/[.!?]/).reject {|x| x.empty?}.size
    

    #self.split 
          # ["This, well, is a sentence. This is too!! And so is this, I think? Woo..."]
    

    #self.split(//) 
          # ["T",
          #  "h",
          #  "i",
          #  "s",
          #  ",",
          #  " ",
          #  "w",
          #  "e",
          #  "l",
          #  "l",
          #  ",",
          #  " ",
          #  "i",
          #  "s",
          #  " ",
          #  "a",
          #  " ",
          #  "s",
          #  "e",
          #  "n",
          #  "t",
          #  "e",
          #  "n",
          #  "c",
          #  "e",
          #  ".",
          #  " ",
          #  "T",
          #  "h",
          #  "i",
          #  "s",
          #  " ",
          #  "i",
          #  "s",
          #  " ",
          #  "t",
          #  "o",
          #  "o",
          #  "!",


    #self.split(/[.!?]/) #takes '.','!','?'' off of a string, which becomes the separation/devition mark by a string, and put collected strings in an arr.
          # ["This, well, is a sentence", 
          #  " This is too",
          #  "",
          #  " And so is this, I think",
          #  " Woo"] 
 
    #however "" is problem. We need to take that off.

    #self.split(/[.!?]/).reject {|x| x.empty?}


    #self.split(/[.!?]/).map {|each| each.delete("") } this doesn't work.
    #binding.pry
    self.split(/[.!?]/).reject {|each| each.empty?}.size
  end

end