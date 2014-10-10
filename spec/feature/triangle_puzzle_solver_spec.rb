require 'rspec'

describe "triangle puzzle solver" do
  subject { `ruby triangle_puzzle_solver.rb #{input_file}` }

  context "given simple input data" do
    let(:input_file) { "fixtures/simple_input_data.txt" }
    
    it "outputs the maximum sum" do
      expect(subject).to match /^the maximum sum is 27/
    end
  end
  
  context "given complex input data" do
    let(:input_file) { "fixtures/complex_input_data.txt" }
    
    it "outputs the maximum sum" do
      expect(subject).to match /^the maximum sum is 665321/
    end
  end
  
  context "given no input data" do
    let(:input_file) { "" }
    
    it "outputs error message with usage instructions" do
      expect(subject).to match /^USAGE: ruby triangle_puzzle_solver.rb \/path\/to\/your\/file.txt/
    end
  end
end