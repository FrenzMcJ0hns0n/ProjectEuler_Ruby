# https://projecteuler.net/problem=10

def aiSummation_of_primes
    aiPrimes = [2,3,5,7]

    (11...2_000_000).step(2) do |i|
        iModulo10 = i % 10 # Get i last digit
        next if iModulo10 == 5 # Divisible by 5
        next if i.digits.sum % 3 == 0 # Divisible by 3
        next if (i.to_s.chop!.to_i - iModulo10 * 2) % 7 == 0 # Divisible by 7

        fSqrt = Math.sqrt(i) # Float
        next if fSqrt % 1 == 0 # If Math.sqrt(i) is an Integer, then i is not a Prime number
        
        bContinue = false
        (3..fSqrt).each do |j|
            next if j % 2 == 0
            if i % j == 0
                bContinue = true
                break
            end
        end
        next if bContinue

        aiPrimes << i
    end

    aiPrimes.sum
end

puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
puts aiSummation_of_primes
puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
gets