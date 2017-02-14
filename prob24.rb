## DONE!!!
#https://projecteuler.net/problem=24
#
#2783915460 ANS
#3 sec

start = Time.now

def prob24(num, position)
  permutations = num.split("").map(&:to_i).permutation(10).to_a
 
  permutations[position - 1].join
end

puts prob24("0123456789",1000000)
puts Time.now - start

#TOO LONG INEFFICIENT, BRUTE-FORCE
=begin
def prob24(num,position)
    idx1 = -1
    idx2 = -1
    memo = Hash.new(0)
    total_permutation = factorial(num.length,memo)
    permutations = []
    perm = ""
    while permutations.count < total_permutation
      perm += num +" "
      permutations << num
      (0...num.length - 1).each do |e|
          idx1 = e if(num[e] < num[e + 1])
      end
      
      (0...num.length).each do |e|
          idx2 = e if(num[idx1] < num[e])
      end
      
      swap(num,idx1,idx2)

      num = num[0..idx1] + num[idx1 + 1..-1].reverse
    end
    perm.split(" ")[position]
end

def swap(num,idx1,idx2)
    num[idx1],num[idx2] = num[idx2],num[idx1]
end

def factorial(num,memo)
  if num <= 1
      return 1
  elsif memo[num] > 0
      return memo[num]
  end
  memo[num] = num * factorial(num - 1,memo)
  memo[num]
end
=end