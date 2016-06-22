#lets put all students into an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
#add a header method
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

#add a method that prints student list
def print names
  names.each do |name|
  puts name
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
