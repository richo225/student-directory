#get the ABSOLUTE path of the file
path = File.expand_path(File.dirname(__FILE__))

#get the name of the file
file_name = __FILE__

#open the file using its name and absolute path
File.open("#{path}/#{file_name}", "r") do |file|
  #read through each line of the file and print them
  file.each_line do |line|
    puts line
  end
  #block causes file to close automatically
end
