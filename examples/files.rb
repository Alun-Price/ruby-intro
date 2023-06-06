# frozen_string_literal: true

puts Dir.pwd # shows current working directory path
# Dir.mkdir("foo") # makes the dir 'foo' in the root

print Dir.glob("*.rb") # uses glob method of Dir - hello.rb

Dir.glob("*") do |filename|
  puts filename
end

# change dir to the foo folder and show pwd chnge
Dir.chdir("foo")
puts Dir.pwd

# add a bar dir and then delete it
# Dir.mkdir("bar")
# Dir.delete("bar")

# folder = Dir.new("/Users/alunprice/Desktop/workspaces/ruby-intro/foo")
folder = Dir.open("/Users/alunprice/Desktop/workspaces/ruby-intro/foo")
# returns a new directory object for the named dir
print folder.entries # [".", "..", "test.txt"]

# another way to show the files
folder.each do |file|
  puts file
end

print Dir.entries("/usr/bin").sort # shows all the /usr/bin files as an array
# does the same but makes a list
entry_list = []
Dir.foreach("/usr/bin") do |entry|
  entry_list.push("#{entry}")
end

puts entry_list.sort

# another shortcut way to do above again
# puts Dir["/usr/bin/*"].sort

# lets open a new file and write to it and then close it
f = File.new("test.txt", "w+")
f.puts "first line"
f.write("second line")
f.write("third line ?")
f.close

# show the content of the file
File.open("test.txt", "r") do |file|
  puts file.read
end

f = File.open("test.txt", "r")
puts f.read # read moves the cursor to the end
f.rewind # rewinds the cursor to the start
puts f.readline # readline reads to the end of the line

# read it line-by-line
f = File.open("test.txt", "r")
f.each do |line|
  puts line
end

# want the absolute path of a file ???
puts File.absolute_path("test.txt")

puts File.basename("/Users/alunprice/Desktop/workspaces/ruby-intro/foo/test.txt")
# shows the basename - test.txt
puts File.basename("/Users/alunprice/Desktop/workspaces/ruby-intro/foo/test.txt", ".txt")
# adding the file-ending option, gives you the basename without the ending = test

# File Utilities
# check if file exists
puts File.exist?("test.txt") # check if file exists - true
puts File.file?("test.txt") # check if file name is file - true
puts File.directory?("test") # check if name is dir name - false
File.rename("test.txt", "foo.txt") # rename a file
File.delete("foo.txt") # delete a file
