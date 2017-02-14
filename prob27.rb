## DONE!!! 
#
#https://projecteuler.net/problem=27
#
#-59231 ANS
#11s
start = Time.now
def prob27
  max_ab, max_n = 0, 0
  (-1000..1000).each do |a|
    (-1000..1000).each do |b|
      n = 0
      while prime?((n * n + (a * n) + b).abs) 
        n += 1
      end
      if n > max_n
        max_ab = a * b
        max_n = n
      end
    end
  end
  max_ab
end

def prime?(num)
  return false if num < 2
  return false if (num % 2 == 0) && (num != 2)
  (3..Math.sqrt(num)).step(2).each do |e|
      return false if num % e == 0
  end
  true
end


puts prob27
puts Time.now - start