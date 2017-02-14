## DONE!!!
#A palindromic number reads the same both ways. 
#The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#Find the largest palindrome made from the product of two 3-digit numbers.
#
#https://projecteuler.net/problem=4
#
#906609 ANS
#371 ms

start = Time.now
def three_digit_palindrome
  num1 = 999
  pal_arr = []
  while num1 > 99
    num2 = 999
    while num2 > 99
      pal_num = num1 * num2
      pal_arr << pal_num if pal_num.to_s == pal_num.to_s.reverse
      num2 -= 1
    end
    num1 -= 1 
  end
  pal_arr.max
end

puts three_digit_palindrome
puts Time.now - start



=begin

def rpalindrome?(number)
  arr_num = number.to_s.split("")
  return true if arr_num[0..arr_num.length/2 -1] == arr_num[arr_num.length/2 .. -1].reverse
  return true if arr_num[0..arr_num.length/2 -1] == arr_num[arr_num.length/2 + 1 .. -1].reverse
  false
end

def palindrome?(number)
  arr_num = number.to_s.split("")
  front = 0
  back = -1
  while (front < arr_num.length / 2)
    if (arr_num[front] == arr_num[back]) 
      front += 1
      back -= 1
    else
      return false
    end
  end
  true
end
=end
