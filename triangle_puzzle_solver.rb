require_relative 'lib/triangle_puzzle_solver.rb'

file_path = ConsoleUtils.get_file_path
triangle = FileUtils.parse_file(file_path)
maximum_sum_method = MaximumSumMethod.new(triangle)
maximum_sum = maximum_sum_method.compute
puts "the maximum sum is #{maximum_sum}"