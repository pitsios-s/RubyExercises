#!/usr/bin/ruby2.0

=begin
   This script is an example of fetching specific
   object type from a collection of objects , using lambdas
   and procs
=end

collection = ["A" , 1 , "B" , 2 , "C" , 3 , "D" , 4 , "E" , 5 , :a , :b , :c]

numbers = lambda{ |x| x.is_a? Integer }
strings = Proc.new { |x| x.is_a? String}
my_print = Proc.new { |x| print x.to_s << " "}


nums = collection.select( &numbers )
nums.each &my_print

puts

strs = collection.select( &strings )
strs.each &my_print

puts
