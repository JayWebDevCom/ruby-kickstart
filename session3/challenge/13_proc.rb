# Build your own sort method. It does not have to be fancy, any sort will do.
# There are many listed here: http://en.wikipedia.org/wiki/Sorting_algorithm#Summaries_of_popular_sorting_algorithms
#
# The purpose is to let the user customize how you sort the array by submitting a block that tells you which
# element goes first.
#
# If a block is given , it should use the block to determine what order the elements should be sorted by
#
# Rules for spaceship operator (Java calls it compareTo):
#   given two elements, the proc should return -1 if the first element goes first
#   it should return 1 if the second argument goes first
#   it should return 0 if it doesn't matter which order the elements go
#
# if no block is given, use the spaceship operator <=> to determine it
#
# EXTRA POINTS FOR:
#   normalizing the input (the proc) at the start, rather than checking to see if it is there every time
#   you wish to use it. (hint: if no block is submitted, the proc variable will be nil)
#
#
# EXAMPLE:
#
# sorting numbers:
#
# your_sort [24, 0, 68, 44, 68, 47, 42, 66, 89, 22]  # => [0, 22, 24, 42, 44, 47, 66, 68, 68, 89]
#
# your_sort [24, 0, 68, 44, 68, 47, 42, 66, 89, 22] do |a, b|
#   if a < b
#     -1
#   elsif a > b
#     1
#   else
#     0
#   end
# end   # => [0, 22, 24, 42, 44, 47, 66, 68, 68, 89]
#
#
# sorted by second letter (don't worry about things lsike 'the' vs 'The'):
# your_sort %w(The quick brown fox jumps over the lazy dog) do |a, b|
#   a[1..1] <=> b[1..1]
# end   # => ["lazy", "The", "the", "fox", "dog", "brown", "jumps", "quick", "over"]
#
#
# placing all strings first, integers second, and floats last, each sorted within themselves
# your_sort [2.5, 'r', 1, 4, 'a', 9, 3, 9.0, 'm', 25.8] do |a, b|
#   a_class_val = [String, Fixnum, Float].index(a.class)
#   b_class_val = [String, Fixnum, Float].index(b.class)
#   if a_class_val == b_class_val
#     a <=> b
#   else
#     a_class_val <=> b_class_val
#   end
# end       # => ["a", "m", "r", 1, 3, 4, 9, 2.5, 9.0, 25.8]

# I found this very challenging. I need to read up more
# Update, I understand this now

def your_sort(array, &block)
	block ||= Proc.new { |a,b| a <=> b }
	
	# for each array element
	array.length.times do |first_val|
		
		#compare element to every other element including itself
		array.length.times do |second_val|
		    
		    # the comparison results in 1, 0 or -1 
      order = block.call(array[first_val], array[second_val])
      
      #redistribute/reassign the array elements based on the block result
      case order
	      when -1
	      	array[first_val], array[second_val] = array[second_val], array[first_val]
	      #when 0
	      	#array[first_val], array[second_val] = array[first_val], array[second_val]
	      when 1
	      	array[second_val], array[first_val] = array[second_val], array[first_val]
				#else
				end      
    end
  end
  array # return array because array might be [] i.e. size of zero 
end








