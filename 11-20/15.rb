# https://projecteuler.net/problem=15

# I did not solved this one on my own.
# Could not identify any pattern to use in code from 2x2, 3x3, 4x4 sized grids...

# Got help from here:
# https://www.xarg.org/puzzle/project-euler/problem-15/
# Found the final formula here:
# https://oeis.org/

def factorial(iNb)
    return 1 unless iNb > 0
    iNb * factorial(iNb - 1)
end
  
def iLattice_paths(iDim)
    factorial(iDim * 2) / factorial(iDim)**2
end

puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
puts iLattice_paths(20)
puts "#{Time.now.strftime("%d/%m/%Y %H:%M:%S")}"
gets