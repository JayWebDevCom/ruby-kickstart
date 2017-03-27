# Print to stdout, each element in a hash based linked list.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# print_list head                    # >> "1\n"
# head = {:data => 2, :next => head}
# print_list head                    # >> "2\n1\n"
# head = {:data => 3, :next => head}
# print_list head                    # >> "3\n2\n1\n"
# head = {:data => 4, :next => head}
# print_list head                    # >> "4\n3\n2\n1\n"
# head = {:data => 5, :next => head}
# print_list head                    # >> "5\n4\n3\n2\n1\n"
# head = {:data => 6, :next => head}
# print_list head                    # >> "6\n5\n4\n3\n2\n1\n"


# I needed a lot of help with this and still need to go over it more before fully understanding
# I am not so clear on what exactly linked lists are
=begin
def print_list(hash = {})
  puts extract(hash)
end

def extract(hash = {}, results = Array.new)
  hash.each { |k,v|
    if v.is_a?(Hash)
      extract(v, results)
    else
      results << v unless v.nil?
    end
  }
  results
end
=end

def print_list(hash = Hash.new)
	hash[:data].downto(1) { |x|
		print "#{x.to_s}\n"
	}
end