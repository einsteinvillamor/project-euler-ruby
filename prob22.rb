## DONE!!!
#
#Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. 
#Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
#
#For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, 
#is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.
#
#What is the total of all the name scores in the file?
#https://projecteuler.net/problem=22
#
#871198282 ANS
#80 ms
#

start = Time.now
def prob22
  file = File.open("p022_names.txt","r")
  names = file.read.gsub('"',"").split(",").sort
  file.close
  arr = []
  names.each_with_index do |e,i|
    word_sum = e.split("").reduce(0) {|acc,letter| acc + (letter.ord - 64)}
    arr << word_sum * (i + 1) 
  end
  arr.reduce(:+)
end

puts prob22
puts Time.now - start