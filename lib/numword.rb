class Fixnum
  def numword
    words_hash = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6=> "six", 7 => "seven", 8 => "eight", 9 =>"nine"
    }

    number = self

    if words_hash.has_key?(number)
      number = words_hash[number]
    end
    number
  end
end
