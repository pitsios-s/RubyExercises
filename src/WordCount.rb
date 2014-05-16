#!/usr/bin/ruby

print "Give Text : "
text = gets.chomp

words = text.split(" ")

dictionary = Hash.new(0)

words.each do |w|
   dictionary[w] += 1
end

dictionary = dictionary.sort_by{ |key , value| value }

dictionary.reverse!

dictionary.each do |key , value|
   puts "#{key} : #{value}"
end
