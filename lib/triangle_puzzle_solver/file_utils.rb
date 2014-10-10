class FileUtils
  # WARNING: Rick didn't have time to finish refactoring me! :)
  def self.parse_file(file_path)
    raise unless file_path
    # an array of the given file's contents in lines
    file_lines = []
    # load, parse and cast as integers the contents of the given file
    File.open(file_path, "r") do |f|
      while(line = f.gets)
        file_lines << line.split.map { |c| c.to_i }
      end
    end
    file_lines
  end
end