# https://projecteuler.net/problem=1

def iMultiples_of_3_or_5
	iSum = 0

	(1...1000).each do |i|
		iSum += i if (i % 3 == 0 || i % 5 == 0)
	end
	
	iSum
end

puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
puts iMultiples_of_3_or_5
puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
gets