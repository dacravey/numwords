class Fixnum
  def numword
    number = self.to_i
    words_hash = {9 => "nine",8 => "eight",7 => "seven",
                6 => "six",5 => "five",4 => "four",3 => "three",2 => "two", 1 => "one"   }

    converted_nums = []
      0.upto(number) do
      words_hash.each do |num, word|
        if number >= num
          converted_nums.push(word)
          number -= num
          break
        end
      end
    end
    converted_words = converted_nums.join(" ")
    converted_words
  end
end
