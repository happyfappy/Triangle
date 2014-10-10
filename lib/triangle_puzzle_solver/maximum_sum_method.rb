class MaximumSumMethod
  def initialize(triangle)
    @triangle = triangle
  end
  
  # WARNING: Rick didn't have time to finish refactoring me! :)
  def compute
    # the position of the largest integer in the current row
    index = 0

    # the maximum sum
    maximum_sum = 0

    @triangle.each_with_index do |line, line_index|
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
    
    maximum_sum
  end
end