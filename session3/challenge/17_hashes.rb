# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

# I needed a lot of help with this and still need to go over it more before fully understanding
# I am not so clear on what exactly linked lists are

def print_list_in_reverse(hash = {})
  puts extract(hash).reverse
end

def extract(hash = {}, results =[])
  hash.each { |k,v|
    if v.is_a?(Hash)
      extract(v, results)
    else
      results << v if v.nil? == false
    end
  }
  results
end

head = {:data => 2, :next => head}

print_list_in_reverse head