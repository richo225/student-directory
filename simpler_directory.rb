@students = [] #empty array accessible to all methods

def interactive_menu
  puts "What would you like to do?"
  loop do
    #print the menu and ask the user what to do
    print_menu
    #do what the user has asked
    process gets.chomp
    #run the process method passing in gets.chomp as selection
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def process selection
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      load_students
    when "9"
      exit #cause the program to terminate
    else
      puts "I don't know what you meant, please try again"
  end
end

#add a method that prints the output if 2 chosen in menu
def show_students
  print_header
  print_students
  print_footer
end

#method to allow user input if 1 chosen in menu
def input_students
  puts "Please enter the name of the students"
  puts "To finish and go back to the menu, hit return"
  #get their information
  name = gets.chomp
  if !name.empty?
    puts "Please enter his/her cohort: January, July or November?"
    cohort_input = gets.chomp
    #set default November cohort if nothing entered
    cohort_input == ""? cohort = "November" : cohort = cohort_input
    #add the student hash to the array
    @students << {name: name, cohort: cohort}
    @students.length > 1 ? (puts "Now we have #{@students.count} students") : (puts "Now we have 1 student")
    #recursion to ask for another name = couldn't get while to work???
    input_students
  end
end

#add a header method
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

#add a method that prints students and their cohort
def print_students
  @students.each do |student|
      puts "   Name:".ljust(11) + "-".center(8) + "#{student[:name]}"
      puts "   Cohort:".ljust(11) + "-".center(8) + "#{student[:cohort]}"
      puts ""
  end
end

#add a footer method that prints student count
def print_footer
  if @students.count > 1
    puts "Overall, we have #{@students.count} great students"
  elsif @students.count == 1
    puts "Overall, we have 1 great student"
  else
    puts "There are no students yet"
  end
end

#add a method to save the students array to file if 3 chosen in menu
def save_students
  #open a file to be written to
  file = File.open("students.csv", "w")
  #iterate through students and save their name and cohort to a new array
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    #convert hash in array to a string (separated by a comma) to be saved
    csv_line = student_data.join(",")
    #save this string to the opened file
    file.puts csv_line
  end
  #close the file
  file.close
end

#add a method to read the students.csv file if 4 chosen in menu
def load_students
  #open the students.csv file
  file = File.open("students.csv", "r")
  #iterate over each line in the file
  file.readlines.each do |line|
    #split at the comma and parallel assign name to the first value, cohort to the second
    name, cohort = line.chomp.split(",")
    #create a hash and push to the @students array
    @students << {name: name, cohort: cohort}
  end
  #close the file
  file.close
end


interactive_menu
