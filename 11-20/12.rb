# https://projecteuler.net/problem=12

def bIsPrime(nbr)
    return false if nbr == 1 || nbr % 2 == 0
    return true if [2, 3, 5, 7].include?(nbr) # (useless line in this problem)

    iModulo10 = nbr % 10 # Get i last digit
    return false if iModulo10 == 5 # Divisible by 5
    return false if nbr.digits.sum % 3 == 0 # Divisible by 3
    return false if (nbr.to_s.chop!.to_i - iModulo10 * 2) % 7 == 0 # Divisible by 7

    fSqrt = Math.sqrt(nbr) # Float
    return false if fSqrt % 1 == 0 # nbr is not prime if Math.sqrt(nbr) is an Integer
    
    (3..fSqrt).each do |i|
        next if i % 2 == 0
        return false if nbr % i == 0
    end

    true
end

def iHighly_divisible_triangular_number(iMax)
    iTriangle = 0

    iPlus = 1
    loop do
        iTriangle += iPlus # iTriangle = 1, 3, 6, 10, 15, etc.

        if iTriangle > iMax && !bIsPrime(iTriangle)
            iFactorsCount = 0
            (1..Math.sqrt(iTriangle)).each do |i|
                iFactorsCount += 1 if iTriangle % i == 0
            end
            # puts "iTriangle (#{iTriangle}) has #{iFactorsCount} factors"
            break if iFactorsCount >= iMax / 2
        end

        iPlus += 1
    end

    iTriangle
end

puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
puts iHighly_divisible_triangular_number(500)
puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
gets