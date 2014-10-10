require_relative '../../lib/triangle_puzzle_solver.rb'

describe ConsoleUtils do
  describe '.get_file_path' do
    subject { ConsoleUtils.get_file_path }
    
    context 'when given a command line argument' do
      before do
        allow(ARGV).to receive(:length).and_return(1)
        allow(ARGV).to receive(:[]).with(0).and_return('my_file.txt')
      end
      
      it "returns the first argument as the file path" do
        expect(subject).to eq 'my_file.txt'
      end
    end
    
    context 'when not given arguments' do
      before do
        allow(ARGV).to receive(:length).and_return(0)
      end
      
      it "raises an exception" do
        expect{subject}.to raise_error
      end
    end
  end
end