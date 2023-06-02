# frozen_string_literal: true

is_online = false

page = if !is_online
  "maintenance"
else
  "homepage"
end
puts page

# ternary operator
page = is_online ? "homepage" : "maintenance"
puts page

# shorthand
puts "maintenance" unless is_online

# another shorthand
unless is_online then puts "maintenance" end

# add else to shorthand one-liner
is_online ? "homepage" : (puts "maintenance")
