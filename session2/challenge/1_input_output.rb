# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
# 
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  entered = gets.chomp
  a = entered.split(' ').first.to_i
  b = entered.split(' ').last.to_i
  sum = a + b
  difference = a - b
  product = a * b
  puts "#{sum.to_s}\n#{difference.to_s}\n#{product.to_s}"
end
