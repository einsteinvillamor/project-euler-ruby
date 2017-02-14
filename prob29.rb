## DONE!!!
#
#https://projecteuler.net/problem=29
#
#9183 ANS
#3s

start = Time.now
def prob29
    distinct_num = []
    #2 <= a <= 100 and 2 <= b <= 100
    (2..100).each do |a|
        (2..100).each do |b|
            distinct_num << a ** b unless distinct_num.include?(a**b)
        end
    end
    distinct_num.count
end

puts prob29
puts Time.now - start