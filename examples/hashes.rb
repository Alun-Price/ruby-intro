# frozen_string_literal: true

person = { name: "John", lastname: "Doe", city: "London" }

for key, value in person
  puts "#{key} = #{value}"
end

puts person.keys

puts person.values

i = 0
while i < person.length
  puts "#{person.keys[i]} = #{person.values[i]}"
  i += 1
end
