# Rick Reilly - Triangle Solution

# get the file path from console input
unless ARGV.length > 0
    puts 'USAGE: ruby solution_triangle.rb /path/to/your/file.txt'
  exit
end
file_path = ARGV[0]

# an array of the given file's contents in lines
file_lines = []

# load, parse and cast as integers the contents of the given file
File.open(file_path, "r") do |f|
  while(line = f.gets)
    file_lines << line.split.map { |c| c.to_i }
  end
end

# the position of the largest integer in the current row
index = 0

# the maximum sum
maximum_sum = 0

file_lines.each_with_index do |line, line_index|
  # the first line is guaranteed to have 1 number, so that is the initial maximum_sum
  if line_index == 0
    maximum_sum = line[index]
  else
    # get the adjacent integers in the next row
    left_integer = line[index]
    right_integer = line[index + 1]
    # get the maximum integer, add it to the sum, and update the index to point to it
    if left_integer >= right_integer
      maximum_sum += left_integer
      # index stays the same
    else
      maximum_sum += right_integer
      index += 1
    end
  end
end

puts "the maximum sum is #{maximum_sum}"