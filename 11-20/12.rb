# https://projecteuler.net/problem=12

#NOTE: Code not OK, Math.sqrt is no help to get all divisors of a number
#TODO? Eliminate iTriangle if prime number

def iHighly_divisible_triangular_number(iMax)
    iTriangle = 0
    iPlus = 1

    loop do
        iTriangle += iPlus # iTriangle = 1, 3, 6, 10, 15, etc.

        if iTriangle > iMax
            iCount = 0
            (1..Math.sqrt(iTriangle)).each do |i| # TODO!
                iCount += 1 if iTriangle % i == 0
            end
            break if iCount == iMax # => iMax + 1 when counting iTriangle itself
        end

        iPlus += 1
    end
    
    iTriangle
end

puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
puts iHighly_divisible_triangular_number(5)
puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
gets