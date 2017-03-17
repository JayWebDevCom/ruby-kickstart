# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(num)
	hash = Hash.new
		(1..num).to_a.each { |y|
			hash[y] = (1..y).to_a.reject!{ |t| t.odd? } if y.odd? 
		}
	hash	
end

puts staircase(5)


