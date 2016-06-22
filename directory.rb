#method to allow user input
def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice"
  #create an empty array to store the input_students
  students = []
  #get the first name
  name = gets.chomp
  #while the name is not empty(enter key not hit twice), repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
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
  while (index < students.length) && (students[index][:name].start_with?("J", "j")) && (students[index][:name].length < 12)
    puts "#{index + 1}. #{students[index][:name]} (#{students[index][:cohort]} cohort)"
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
