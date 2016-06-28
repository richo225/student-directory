path = File.expand_path(File.dirname(__FILE__))

file_name = __FILE__

File.open("#{path}/#{file_name}", "r") do |file|
  file.each_line do |line|
    puts line
  end
end
