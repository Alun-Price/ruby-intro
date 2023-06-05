# frozen_string_literal: true

animals = ["lion", "tiger", "leopard"]

# for/in loop
for animal in animals
  puts animal
end

# while loop
i = 0
while i < animals.length
  puts animals[i]
  i += 1
end

b = animals.each { |a| puts a }
c = animals.map { |a| puts a }

print "b=#{b}\n" # b=["lion", "tiger", "leopard"]
print "c=#{c}\n" # c=[nil, nil, nil]

# both .each and .map belong to the Enumerator class, which allows iteration
