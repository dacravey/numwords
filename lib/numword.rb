class Fixnum
  def numword
    number = self.to_i
    words_hash = { 900 => "nine hundred",800 => "eight hundred",700 => "seven hundred",
                600 => "six hundred",500 => "five hundred",400 => "four hundred",
                300 => "three hundred",200 => "two hundred",100 => "one hundred",
                90 => "ninety", 80 => "eighty", 70 => "seventy",60 => "sixty",
                50 => "fifty",40 => "forty",30 => "thirty",20 => "twenty",
                19 => "nineteen",18 => "eighteen",17 => "seventeen",16 => "sixteen",
                15 => "fifteen", 14 => "fourteen",13 => "thirteen", 12 => "twelve",
                11 => "eleven",10 => "ten",9 => "nine",8 => "eight",7 => "seven",
                6 => "six",5 => "five",4 => "four",3 => "three",2 => "two", 1 => "one" }

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
