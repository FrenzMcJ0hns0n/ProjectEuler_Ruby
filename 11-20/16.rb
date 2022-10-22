# https://projecteuler.net/problem=16

def iPower_digit_sum(iExponent)
    iSumResult = 0

    s2Power = (2**iExponent).to_s
    s2Power.each_char do |c|
        iSumResult += c.to_i
    end

    iSumResult
end

puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
puts iPower_digit_sum(1000)
puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
gets