require_relative '../../lib/triangle_puzzle_solver.rb'

describe FileUtils do
  describe '.parse_file' do
    subject { FileUtils.parse_file(file_path) }
    
    context "when given a file_path" do
      context "with a valid file" do
        let(:file_path) { "fixtures/simple_input_data.txt" }
        
        it "parses the file into 2D array of integers" do
          expect(subject).to eq [
              [5],
              [9, 6],
              [4, 6, 8],
              [0, 7, 1, 5]
            ]
        end
      end 
      
      context "with an invalid file" do
        let(:file_path) { "o/hai.txt" }
        it "raises an exception" do
          expect{subject}.to raise_error
        end
      end
    end
    
    context "when not given a file path" do
      let(:file_path) { nil }
      it "raises an exception" do
        expect{subject}.to raise_error
      end
    end
  end
end