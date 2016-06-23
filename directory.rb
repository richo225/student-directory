#method to allow user input
def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return four times"
  #create an empty array to store the input_students
  students = []
  #get their information
  name = gets.chomp
  puts "Please enter his/her cohort"
  cohort_input = gets.chomp
  cohort_input == ""? cohort = "Default: November" : cohort = cohort_input

  puts "Please enter his/her country of birth"
  country = gets.chomp
  puts "Please enter his/her hobby"
  hobby = gets.chomp

  #while the name is not empty(enter key not hit twice), repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: cohort, country: country, hobby: hobby}
    puts "Now we have #{students.count} students"
    #get another name from the user and their info without prompts
    puts "Please enter student info: name, cohort, country of birth, hobby"
    name = gets.chomp
    cohort_input = gets.chomp
    cohort_input == ""? cohort = "Default: November" : cohort = cohort_input
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
  index = 0
  #assign students[0] index = 0 and then keep adding 1 to loop through array
  while index < students.length
    puts "#{index + 1}. Name:".ljust(11) + "-".center(8) + "#{students[index][:name]}"
    puts "   Cohort:".ljust(11) + "-".center(8) + "#{students[index][:cohort]}"
    puts "   Country:".ljust(11) + "-".center(8) + "#{students[index][:country]}"
    puts "   Hobby:".ljust(11) + "-".center(8) + "#{students[index][:hobby]}"
    puts ""
    index +=1
  end
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
