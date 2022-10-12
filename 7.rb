# https://projecteuler.net/problem=7

def iThe_10001st_prime
    aiPrimes = [2]
    iTarget = 10_001
    
    i = 3
    until aiPrimes.length == iTarget
        iCount = 0
		(3..i).step(2) do |j|
			# iCount +1 for each j factor of i
			iCount += 1 if i % j == 0
            break if iCount > 1 # huge performance boost here
		end
        aiPrimes << i if iCount == 1
        i += 2
    end

    aiPrimes.fetch iTarget - 1
end

puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
puts iThe_10001st_prime
puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
gets