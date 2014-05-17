#!/usr/bin/ruby

#This program asks the user for an integer , and then prints
#that many times a phrase , unless false.

statement = false

print "Please give an integer : "
input = Integer(gets.chomp)

input.times do
   puts "AUEB Rocks!!!" unless statement
end
