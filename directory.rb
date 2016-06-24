#method to allow user input
def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return four times"
  #create an empty array to store the input_students
  students = []
  #get their information
  name = gets.chomp
  puts "Please enter his/her cohort: January, July or November?"
  cohort_input = gets.chomp
  #set default November cohort if nothing entered
  cohort_input == ""? cohort = "November" : cohort = cohort_input

  puts "Please enter his/her country of birth"
  country = gets.chomp
  puts "Please enter his/her hobby"
  hobby = gets.chomp

  #while the name is not empty(enter key not hit twice), repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: cohort, country: country, hobby: hobby}
    students.length > 1 ? (puts "Now we have #{students.count} students") : (puts "Now we have 1 student")
    #get another name from the user and their info without prompts
    puts "Please enter student info: name, cohort, country of birth, hobby"
    name = gets.chomp
    cohort_input = gets.chomp
    cohort_input == ""? cohort = "November" : cohort = cohort_input
    country = gets.chomp
    hobby = gets.chomp
  end
  #return the array of students
  students
end

#add a header method
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

#add a method that prints students and their cohort using loop
def print students
  #get list of existing cohorts january, july or november
  existing_cohorts = students.map {|student| student[:cohort]}.sort.uniq

  #first cohort - if the student matches the existing cohort print the info
  students.each {|student|
    if student[:cohort] == existing_cohorts[0]
      puts "   Name:".ljust(11) + "-".center(8) + "#{student[:name]}"
      puts "   Cohort:".ljust(11) + "-".center(8) + "#{student[:cohort]}"
      puts "   Country:".ljust(11) + "-".center(8) + "#{student[:country]}"
      puts "   Hobby:".ljust(11) + "-".center(8) + "#{student[:hobby]}"
      puts ""
    end
  }

  #second cohort
  students.each {|student|
    if student[:cohort] == existing_cohorts[1]
      puts "   Name:".ljust(11) + "-".center(8) + "#{student[:name]}"
      puts "   Cohort:".ljust(11) + "-".center(8) + "#{student[:cohort]}"
      puts "   Country:".ljust(11) + "-".center(8) + "#{student[:country]}"
      puts "   Hobby:".ljust(11) + "-".center(8) + "#{student[:hobby]}"
      puts ""
    end
  }

  #third cohort
  students.each {|student|
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
def print_footer (names)
  puts "Overall, we have #{names.count} great students"
end

#assign the method to the other methods' parameters(students)
students = input_students
#call the methods
print_header
print students
print_footer students
