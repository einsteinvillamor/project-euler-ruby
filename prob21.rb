## DONE!!!
#
#https://projecteuler.net/problem=21
#
#31626 ANS
#45 ms

start = Time.now
def amicable_pairs(num)
  #d(a) = b and d(b) = a, where a != b.
  b = 0
  amicable_num = 0
  list_of_amicable = []
  (1...num).each do |a|
    b = sum_of_divisors(divisors(a))
    if (sum_of_divisors(divisors(b)) == a) && (a != b) && !(list_of_amicable.include?(a) && list_of_amicable.include?(b))
      list_of_amicable << a 
      list_of_amicable << b
      amicable_num += a + b  
    end
  end
  amicable_num
end

def sum_of_divisors(num)
  #p num
  num.reduce(:+)
end

def divisors(num)
  arr = [1]
  return arr if num < 4
  (2..Math.sqrt(num)).each do |e|
    if (num % e == 0) && !(arr.include?(e))
      arr << e
      arr << num / e unless arr.include?(num / e)
    end
  end
  arr
end

puts amicable_pairs(10000)
puts Time.now - start