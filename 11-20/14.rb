# https://projecteuler.net/problem=14

def iProcess_sequence(n, iLength)
    return iLength if n == 1

    if n % 2 == 0
        iProcess_sequence(n / 2, iLength += 1)
    else
        iProcess_sequence(3*n+1, iLength += 1)
    end
end

def sLongest_collatz_sequence
    sResult = ""

    iMaxLength = 0
    iCurLength = 0
    (1...1_000_000).each do |n|
        iCurLength = iProcess_sequence(n, 1)

        if iCurLength > iMaxLength
            iMaxLength = iCurLength
            sResult = "#{n} produces the longest chain = #{iMaxLength}"
        end
    end

    sResult
end

puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
puts sLongest_collatz_sequence
puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
gets