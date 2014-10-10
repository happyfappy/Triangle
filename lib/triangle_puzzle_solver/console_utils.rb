class ConsoleUtils
  def self.get_file_path
    raise unless ARGV.length > 0
    ARGV[0]
  end
end