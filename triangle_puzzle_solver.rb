require_relative 'lib/triangle_puzzle_solver.rb'

begin
  file_path = ConsoleUtils.get_file_path
rescue
  puts 'USAGE: ruby triangle_puzzle_solver.rb /path/to/your/file.txt'
  exit
end

triangle = FileUtils.parse_file(file_path)

maximum_sum_method = MaximumSumMethod.new(triangle)
maximum_sum = maximum_sum_method.compute

puts "the maximum sum is #{maximum_sum}"