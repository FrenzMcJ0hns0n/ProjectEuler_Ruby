# https://projecteuler.net/problem=3

def iLargest_prime_factor(iNb)
	aiPrimes = Array.new
	fSqrt = Math.sqrt(iNb)
	
	# Start at 3 (1 and 2 are useless) with a step of 2 (to ignore even numbers)
	(3..fSqrt).step(2) do |i|
		# Exclude non-divisors
		next if iNb % i != 0
		
		iCount = 0
		(3..i).step(2) do |j|
			# iCount +1 for each j factor of i
			iCount += 1 if i % j == 0
		end
		# Prime factors are only divisible by themselves and by 1 (excluded here)
		aiPrimes << i.to_i if iCount == 1
	end
	
	aiPrimes.last
end

puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
puts iLargest_prime_factor(600_851_475_143)
puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
gets