## DONE!!!
#Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.
#graph in https://projecteuler.net/problem=13
#
#5537376230 ANS
#3 ms

start = Time.now
def prob13(digits)
  nums = ""
  file = File.open("prob13_num.txt","r")
  nums = file.read.split("\n").map(&:to_i)
  file.close
  nums = nums.reduce(:+).to_s.split("")
  nums[0...digits].join("").to_i
end

puts prob13(10)
puts Time.now - start