#5/16/2020 satu 10:20am 
# Sat 1:59pm - 2:29pm

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

#    self.split(/[.!?]/).reject {|each| each.empty?}.size
    
#OPTION 2
      #self.split(//)
      # [\"T\", \"h\", \"i\", \"s\", \",\", \" \", \"w\", \"e\", \"l\", \"l\", \",\", \" \", \"i\", \"s\", \" \", \"a\", \" \", \"s\", \"e\", \"n\", \"t\", \"e\", \"n\", \"c\", \"e\", \".\", \" \", \"T\", \"h\", \"i\", \"s\", \" \", \"i\", \"s\", \" \", \"t\", \"o\", \"o\", \"!\", \"!\", \" \", \"A\", \"n\", \"d\", \" \", \"s\", \"o\", \" \", \"i\", \"s\", \" \", \"t\", \"h\", \"i\", \"s\", \",\", \" \", \"I\", \" \", \"t\", \"h\", \"i\", \"n\", \"k\", \"?\", \" \", \"W\", \"o\", \"o\", \".\", \".\", \".\"]


      # self.split(/\./)
      # [\"This, well, is a sentence\", \" This is too!! And so is this, I think? Woo\"]


      # self.split(/\.|\?/)
      # [\"This, well, is a sentence\", \" This is too!! And so is this, I think\", \" Woo\"]

      #  self.split(/\.|\?|\!/)
      #  [\"This, well, is a sentence\", \" This is too\", \"\", \" And so is this, I think\", \" Woo\"]"
   
  
    self.split(/\.|\?|!/).delete_if  { |each| each.size < 2 }.size
        end

end


# test = String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...")

# "test.count_sentences:::: #{test.count_sentences}"

