class ConsoleUtils
  def self.get_file_path
    unless ARGV.length > 0
      puts 'USAGE: ruby triangle_puzzle_solver.rb /path/to/your/file.txt'
      exit
    else
      ARGV[0]
    end
  end
end