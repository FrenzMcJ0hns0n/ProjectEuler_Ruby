# https://projecteuler.net/problem=9

def iSpecial_pythagorean_triplet
    bFound = false

    for a in (1...1_000) do
        for b in (a...1_000) do
            for c in (b...1_000) do
                bFound = true if (a**2 + b**2 == c**2) && (a + b + c == 1_000)
                break if bFound
            end
            break if bFound
        end
        break if bFound
    end

    #puts "#{a} * #{b} * #{c} ="
    a * b * c
end

puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
puts iSpecial_pythagorean_triplet
puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
gets