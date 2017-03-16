# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	array = Array.new
	string.split('').each_with_index { |c,i| array.push(i) if ['R', 'r'].include?(c) && string.length > i+1 }
	new_string = ""
	array.each{|y| new_string << string[y+1] }
	new_string
end
