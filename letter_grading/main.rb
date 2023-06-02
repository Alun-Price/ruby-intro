# frozen_string_literal: true

print "Enter Grade Point: "
grade = gets.chomp.to_i

result = case grade
when 90..100 then "Letter Grade A"
when 80..89 then "Letter Grade B"
when 70..79 then "Letter Grade C"
when 60..69 then "Letter Grade D"
when 50..59 then "Letter Grade E"
when 0..49 then "Letter Grade F"
else "invalid input"
end

puts result
