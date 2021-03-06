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

def process selection
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit #cause the program to terminate
    else
      puts "I don't know what you meant, please try again"
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

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
    puts "Please enter his/her country of birth"
    country = gets.chomp
    puts "Please enter his/her hobby"
    hobby = gets.chomp
    #add the student hash to the array
    @students << {name: name, cohort: cohort, country: country, hobby: hobby}
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

#add a method that prints students and their cohort using loop
def print_students
  #get list of existing cohorts january, july or november
  existing_cohorts = @students.map {|student| student[:cohort]}.sort.uniq

  #first cohort - if the student matches the existing cohort print the info
  @students.each {|student|
    if student[:cohort] == existing_cohorts[0]
      puts "   Name:".ljust(11) + "-".center(8) + "#{student[:name]}"
      puts "   Cohort:".ljust(11) + "-".center(8) + "#{student[:cohort]}"
      puts "   Country:".ljust(11) + "-".center(8) + "#{student[:country]}"
      puts "   Hobby:".ljust(11) + "-".center(8) + "#{student[:hobby]}"
      puts ""
    end
  }

  #second cohort
  @students.each {|student|
    if student[:cohort] == existing_cohorts[1]
      puts "   Name:".ljust(11) + "-".center(8) + "#{student[:name]}"
      puts "   Cohort:".ljust(11) + "-".center(8) + "#{student[:cohort]}"
      puts "   Country:".ljust(11) + "-".center(8) + "#{student[:country]}"
      puts "   Hobby:".ljust(11) + "-".center(8) + "#{student[:hobby]}"
      puts ""
    end
  }

  #third cohort
  @students.each {|student|
    if student[:cohort] == existing_cohorts[2]
      puts "   Name:".ljust(11) + "-".center(8) + "#{student[:name]}"
      puts "   Cohort:".ljust(11) + "-".center(8) + "#{student[:cohort]}"
      puts "   Country:".ljust(11) + "-".center(8) + "#{student[:country]}"
      puts "   Hobby:".ljust(11) + "-".center(8) + "#{student[:hobby]}"
      puts ""
    end
  }
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

interactive_menu
