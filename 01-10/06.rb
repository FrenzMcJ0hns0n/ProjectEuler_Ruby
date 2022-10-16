# https://projecteuler.net/problem=6

def iSum_square_difference(iTopLimit)
	iSumOfSquares = 0
	iSumToLimit = 0
	
	(1..iTopLimit).each do |i|
		iSumOfSquares += i**2
		iSumToLimit += i
	end

	iSumToLimit**2 - iSumOfSquares
end

puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
puts iSum_square_difference(100)
puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
gets