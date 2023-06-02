# frozen_string_literal: true

# print numbers from 0 to 5

i = 0
while i < 6
  puts i
  i += 1
end

# while on one line
i = -1
puts(i += 1) while i < 5

# until loop checks negative condition
i = 0
until i > 5
  puts i
  i += 1
end

# until loop as one-liner
i = -1
puts(i += 1) until i > 4

# FOR Loops - Print 1 to 5

for i in 1..5
  puts i
end

# print each letter in the array ["a", "b", "c"]

for i in ["a", "b", "c"] do
  puts i
end

# iterators - each works on collections such as ranges
(1..5).each { |i| puts i }

# as for above but using do .. end to delineate block
(1..5).each do |i|
  puts i
end

# Do-While Loops
# Output: 0 - 5

i = 0
begin
  puts i
  i += 1
end while i < 6

i = 0
begin
  puts i
  i += 1
end until i > 5

# BREAK and NEXT keywords

# print numbers 1 - 5 but when reach 3 break the loop

i = 0
while i < 5
  if i == 3
    break
  end

  puts i
  i += 1
end

# print numbers 1 - 5 except 3
i = 0
while i < 5
  i += 1
  if i == 3
    next
  end

  puts i
end

# control of infinite loop

loop do
  puts "Enter a number: "
  number = gets.chomp.to_i
  if number > 100
    puts "Breaking the loop ..."
    break
  end
end
