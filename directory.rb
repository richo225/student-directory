#lets put all students into an array
#each person is in a hash with the keys name: and cohort:
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
#add a header method
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

#add a method that prints students and their cohort
def print students
  students.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

#add a footer method that prints student count
def print_footer (names)
  puts "Overall, we have #{names.count} great students"
end
#call the methods
print_header
print students
print_footer students
