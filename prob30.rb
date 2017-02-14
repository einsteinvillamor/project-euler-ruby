##  DONE!!!
#
#
#https://projecteuler.net/problem=30
#
#443839 ANS
#18 ms

start = Time.now
def prob30(pow)
  result = 0
  #starts at 1000 since there's no point if it will not produce 5 digits later at inner while
  i = 1000
  #9^5*5 = 295245, upper bound. i think
  upper_bound = (9 ** pow) * (pow)
  while i < upper_bound
    temp_sum = 0
    num = i
    while num > 0
      #divmod divide and modulo the number
      # % 10 gets the last digit in the num
      # / 10 gets all the digits except the last
      num , digit = num.divmod(10)
      temp_sum += digit ** pow
    end
    result += i if temp_sum == i
    i += 1
  end
  result
end

puts prob30(5)
puts Time.now - start