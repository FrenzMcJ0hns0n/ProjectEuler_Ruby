# https://projecteuler.net/problem=4

def iLargest_palindrome_product
	iLargestPalindrome = 0
	
	iProduct = 0
	sProduct = ""
	
	(2..999).each do |i|
		(2..999).each do |j|
			iProduct = i * j
			next if iProduct < iLargestPalindrome
			
			sProduct = iProduct.to_s
			iLargestPalindrome = iProduct if sProduct == sProduct.reverse
		end
	end
	
	iLargestPalindrome
end

puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
puts iLargest_palindrome_product
puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
gets