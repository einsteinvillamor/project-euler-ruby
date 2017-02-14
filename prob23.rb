##
#
#https://projecteuler.net/problem=23
#
#4179871 ANS
#5 s
start = Time.now
def prob23
    abundant = []
    limit = 28123
    sum_abundant = []
    abundant = (2..limit).select do |num|
      divs = get_divisors(num)
      num if abundant?(num, divs)
    end

    abundant.each_with_index do |num1,idx| 
      abundant[idx..-1].each do |num2| 
        if num1 + num2 <= limit
          sum_abundant << num1 + num2
        else
            break
        end
      end
    end

  non_sum_abundant = (1..limit).to_a - sum_abundant
  non_sum_abundant.reduce(:+)
end

def abundant?(num, divs)
    divs.reduce(:+) > num ? true : false
end

def get_divisors(num)
  return [1] if num < 6
  divs = [1]
  (2..Math.sqrt(num)).each do |e|
      break if divs.include?(e)
      if (num % e == 0) 
        divs << e
        divs << num / e unless (num / e == num) || ( num / e == e)
      end
  end
  divs
end

puts prob23
puts Time.now - start

=begin
abundant.each_with_index do |num1,idx|
        abundant[idx..-1].each do |num2|
            #next if non_sum_abundant.include?(num1 + num2)
            if num1 + num2 <= limit
                non_sum_abundant << num1 + num2 unless abundant.include?(num1 + num2)
            else
                break
            end
        end
    end

=end