# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false] ---
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]
# match_maker true, true, true, 0,  nil				  # => false, true] ---
# match_maker true, nil, false, :abc, /abc/					# => [false, false] ---


def match_maker(a, *b)
	array = (0...b.count).to_a
	new_array = []
	answer = []
	array.each_slice(2){ |i| new_array << i }
	
if a == false
	new_array.each { |i| 
		b[i[0]], b[i[1]] = !!b[i[0]], !!b[i[1]]
		b[i[0]] == b[i[1]] ? answer << true  : answer << false }

elsif a == true
	new_array.each { |i|		
		b[i[0]], b[i[1]] = !!b[i[0]], !!b[i[1]]
		b[i[0]] != b[i[1]]  ? answer << true  : answer << false }
else
end
answer
end