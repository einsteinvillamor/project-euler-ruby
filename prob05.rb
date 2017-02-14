## DONE!!!
#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#https://projecteuler.net/problem=5
#
#
#232792560 ANS
#5.5 sec

start = Time.now
def prob5
  i = 20
  bool = false
  while true
    (1..20).each do |e|
      if i % e == 0
        bool = true
        next
      else
        bool = false
        break
      end
    end
    return i if bool
    i += 20
  end
end

puts prob5
puts Time.now - start