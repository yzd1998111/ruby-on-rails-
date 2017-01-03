class LineAnalyzer
  attr_accessor :highest_wf_words, :highest_wf_count
  attr_reader :content, :line_number 
  def initialize(content,num)
    @content=content
    @line_number=num
    @highest_wf_words=[]
    @highest_wf_count=-1
    @countHash={}
    calculate_word_frequency()
  end 

  def getCount 
    return @highest_wf_count
  end 

  def getWord
    return @highest_wf_words
  end 

  def getLine 
    return @line_number
  end 
  def calculate_word_frequency()
      arrOfWords=@content.split
      arrOfWords.each do |word|
        word=word.downcase
        @countHash[word]||=0
        @countHash[word]+=1
      end 
      @countHash.each do |eachKey,value|
        if @countHash[eachKey]>@highest_wf_count
          @highest_wf_words=[]
          @highest_wf_words.push(eachKey)
          @highest_wf_count=value
        elsif @countHash[eachKey]==@highest_wf_count
           @highest_wf_words.push(eachKey)
        else 
       end 
     end
   end
  
end

class Solution
    def initialize 
      @analyzers=[]
      @highest_count_across_lines = nil
      @highest_count_words_across_lines = nil
      @line_count=0
    end 

    def analyzers()
      return @analyzers 
    end

    def analyze_file()
        File.foreach("test.txt") do |line|
          
          @line_count+=1 
          eachAnalyzer=LineAnalyzer.new(line,@line_count)
         @analyzers.push(eachAnalyzer)
      end 
    end

    def highest_count_across_lines
      return @highest_count_across_lines
    end

    def highest_count_words_across_lines
      return @highest_count_words_across_lines
    end


    def calculate_line_with_highest_frequency()
       @highest_count_across_lines||=0
        @analyzers.each do |eachAna|
          wordFre=eachAna.getCount
          if wordFre>@highest_count_across_lines
            @highest_count_words_across_lines=[]
            @highest_count_words_across_lines.push(eachAna)
            @highest_count_across_lines=wordFre
          elsif wordFre==@highest_count_across_lines
            @highest_count_words_across_lines.push(eachAna)
          else
          end
        end
    end 

    def print_highest_word_frequency_across_lines
        @highest_count_words_across_lines.each do |theWor|
          puts "#{theWor.getWord} (appears in line #{theWor.getLine})"
    end 
  end
end

