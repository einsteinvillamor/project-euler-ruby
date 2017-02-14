##
#
#
#Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.
#https://projecteuler.net/problem=26
#
#983 ANS
#11 ms
#require 'byebug'
start = Time.now
def prob26(last)
  (2..last).max_by { |i| pattern_length(i).size }
end

def pattern_length(denominator)
  #byebug
  num = 1
  pattern = []  
  rem = {}
  while true
    #decimal, remainder
    d,r = num.divmod(denominator)
    #if no remainder found return ""
    return "" if r == 0
    pattern << d
    #returns the pattern, if pattern is already repeating
    return pattern[rem[r]..-1].join if rem.key?(r)
    rem[r] = pattern.size
    num = 10*r
  end
end

puts prob26(1000)
puts Time.now - start
=begin
require 'bigdecimal'

def prob26(num)
    arr_high_length = []
    (2..num).each do |d| 
        ans = (1.0 / d).to_s.split(".")
        arr_high_length << pattern_length(ans[1])
    end
    arr_high_length.max
end

def pattern_length(string)
  first = 0 
  last = 1
  highest_length = [0]
  longest_recurring = []
  #symbols :lastF stands for last false, :firstT stands for first true, :firstUC stands for unchecked
  last_added = :firstF
  while last < string.length - 1
    #greater than 1 to know that it re-occurs
    if string.scan(string[first..last]).size > 1
      highest_length << string[first..last].length
      longest_recurring << string.scan(string[first..last]).size
      last += 1
      last_added = :lastT if string.scan(string[first..last]).size > 1
      last_added = :lastF unless string.scan(string[first..last]).size > 1
    elsif last_added == :firstF
      last += 1
      last_added = :lastT if string.scan(string[first..last]).size > 1
      last_added = :lastF unless string.scan(string[first..last]).size > 1
    elsif (last_added == :lastF) && (first < last)
      first += 1
      last_added = :firstT if string.scan(string[first..last]).size > 1
      last_added = :firstF unless string.scan(string[first..last]).size > 1
    end
  end
  p longest_recurring.max
  highest_length.max
end

puts prob26(1000)
=end
