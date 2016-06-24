def interactive_menu
  students = []
  loop do
    #print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    #read the input and save it into a variable
    selection = gets.chomp
    #do what the user has asked
    case selection
      when "1"
        #input the students
        students = input_students
      when "2"
        print_header
        print students
        print_footer students
      when "9"
        exit #cause the program to terminate
      else
        puts "I don't know what you meant, please try again"
    end
  end
end
