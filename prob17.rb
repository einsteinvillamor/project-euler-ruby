## DONE!!!
#If the numbers 1 to 5 are written out in words: 
#one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
#If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#
#NOTE: Do not count spaces or hyphens. For example, 
#342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. 
#The use of "and" when writing out numbers is in compliance with British usage.
#https://projecteuler.net/problem=17
#
#21124 ANS
#2 ms

start = Time.now
def prob17
  #0-19
  s_digit = ["","one","two","three","four","five","six","seven","eight","nine" ,"ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"] 
  #20-99
  n_digit = ["","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]
  hundred = "hundred".length
  w_and = "and".length
  thousand = "thousand".length
  sum = 0

  #0-9
  (0..9).each do |e|
    sum += s_digit[e].length
  end
  one_to_nine = sum
  #10-19
  (10..19).each do |e|
    sum += s_digit[e].length
  end  

  #20-99
  (1..8).each do |n|
    (0..9).each do |s|
      sum += n_digit[n].length + s_digit[s].length
    end
  end
  
  #101..999 except (100,200,300...)
  sum += sum * 9  
  
  #100,200,300...
  sum += hundred * 9 

  #1-9 at the front of "hundred"
  sum += one_to_nine * 100

  #all hundred and
  sum += 9*99*(hundred + w_and)
  
  #adds one thousand
  sum += s_digit[1].length + thousand
end

puts prob17
puts Time.now - start

=begin
  #100..119 -900..919
  (0..19).each do |s|
    (1..9).each do |n|
      sum += s_digit[n].length + hundred + fixer
    end
    fixer = w_and + s_digit[s].length
  end

  #120-999

  (1..8).each do |n|
    (1..9).each do |s|
      (0..9).each do |f|
        sum += s_digit[s].length + hundred + w_and + n_digit[n].length + s_digit[f].length
      end
    end
  end

  (1..9).each do |s|
    (1..8).each do |n|
      (0..9).each do |f|
        sum += s_digit[s].length + hundred + w_and + n_digit[n].length + s_digit[f].length
      end
    end
  end
=end  


  
=begin
  #0-19
  (0..9).each do |e|
    sum += s_digit[e].length
    sum += d_digit[e].length
  end
  #20-99
  (1..9).each do |n|
    (0..9).each do |s|
      sum += n_digit[n].length + s_digit[s].length
    end
  end

  #100-999
  (1..9).each do |s|
    (0..9).each do |e|
      sum += s_digit[s].length + hundred + s_digit[e].length
    end
  end
=end

  #arr = word.split(/[^a-zA-Z]/)
  #arr.reduce(0) {|acc,e| acc + e.length}