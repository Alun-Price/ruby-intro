# frozen_string_literal: true

a = 5
b = 4

if a < b
  puts "a is less than b"
else
  puts "a is greater than b"
end

if a <= b
  puts "#{a} less than or equal to #{b}"
elsif a >= b
  puts "#{a} greater than or equal to #{b}"
elsif a != b
  puts "#{a} not equal to #{b}"
end

if a > b && b > 0
  puts "Both conditions are true!"
end

if a < b || b > 0
  puts "At least one of the conditions is true"
end

puts "a is greater than b" if a > b

message = if a > b
  "a greater than b"
elsif a < b
  "a less than b"
else
  "a equal b"
end

puts message
