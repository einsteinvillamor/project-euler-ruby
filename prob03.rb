## DONE!!!
#The prime factors of 13195 are 5, 7, 13 and 29.
#
#What is the largest prime factor of the number 600851475143 ?
#https://projecteuler.net/problem=3
#
#6857 ANS
#4 ms

start = Time.now
def factors_of(number)
  c_num = number
  m_arr= []
  (2...number).each do |e|
    if c_num % e == 0
      m_arr << e 
      c_num /= e
      if prime?(c_num)
        m_arr << c_num
        break
      end
    end
  end
  m_arr.max
end

def prime?(number)
  return true if number < 2
  i = 2
  (2..Math.sqrt(number)).each do |e|
    return false if number % e == 0
  end
  true
end

puts factors_of(600851475143)
puts Time.now - start