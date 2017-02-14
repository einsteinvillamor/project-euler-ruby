## DONE!!!
#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
#a^2 + b^2 = c^2
#For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.
#https://projecteuler.net/problem=9
#
#
#31875000 ANS
#11 ms

start = Time.now
def prob9(num)
  (1..num / 3).each do |a|
      (a..num / 2).each do |b|
          c = num - a - b 
          return a * b * c if (a ** 2 + b ** 2 ) == (c ** 2)
      end
  end
end

puts prob9(1000)
puts Time.now - start