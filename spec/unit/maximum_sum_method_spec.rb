require_relative '../../lib/triangle_puzzle_solver.rb'

describe MaximumSumMethod do
  let(:maximum_sum_method) { MaximumSumMethod.new(triangle) }
  describe "#compute" do
    subject { maximum_sum_method.compute }
    let(:triangle) {
      [
        [5],
        [9, 6],
        [4, 6, 8],
        [0, 7, 1, 5]
      ]
    }
    it "returns the maximum sum of the 'triangle'" do
      expect(subject).to eq 27
    end
  end
end