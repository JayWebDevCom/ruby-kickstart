# Given an array of elements, return true if any element shows up three times in a row
# 
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
	new_arr = []
	array.each_with_index { |e,i| (array[i] == array[i+1] && array[i+1] == array[i+2]) ? new_arr << 'yes' : new_arr << 'no' }
	new_arr.include?('yes') ? true : false
end