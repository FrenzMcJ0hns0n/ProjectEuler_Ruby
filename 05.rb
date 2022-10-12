# https://projecteuler.net/problem=5

def iSmallest_multiple
	iCurrent = 20

	while true
		iCount = 0
		(1..20).each do |i|
			iCount += 1 if iCurrent % i == 0
		end
		
		break if iCount == 20
		iCurrent += 20
	end
	
	iCurrent
end

puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
puts iSmallest_multiple
puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
gets