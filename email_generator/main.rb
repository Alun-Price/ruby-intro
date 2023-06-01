# frozen_string_literal: false

puts ""
puts "Company Email Generator".upcase
puts ""

print "Name: "
name = gets.chomp
print "Last name: "
lastname = gets.chomp
print "Company Name: "
company = gets.chomp

email = ""
email << name.downcase.split.join(".")
email << "."
email << lastname.downcase.split.join(".")
email << "@"
email << company.downcase.split.join
email << ".com"

puts ""
puts "Generated Email".center(email.length, "-")
puts ""

puts email

puts "_".center(email.length, "_")
puts ""
