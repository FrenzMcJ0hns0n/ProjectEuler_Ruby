# https://projecteuler.net/problem=2

def iEven_Fibonacci_numbers
	iSum = 0

	iPrev = 0
	iCurr = 0
	
	(1..4_000_000).each do |i|
		iCurr = 1 if i == 1
		if i == iPrev + iCurr
			iPrev = iCurr
			iCurr = i
			iSum += i if i % 2 == 0
		end
	end
	
	iSum
end

puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
puts iEven_Fibonacci_numbers
puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
gets