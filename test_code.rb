students = [
{name: "Dr. Hannibal Lecter", cohort: "November", country: "UK", hobby: "Eating"},
{name: "Terminator", cohort: "July", country: "France", hobby: "Terminating"},
{name: "Darth Vader", cohort: "January", country: "Germany", hobby: "Lightsabers"},
{name: "Joker", cohort: "July", country: "USA", hobby: "Killing"},
{name: "Jaws", cohort: "November", country: "Brazil", hobby: "Eating"},
{name: "Jason Bourne Junior", cohort: "November", country: "Africa", hobby: "Shooting"}
]

student_data = students.map do |student|
      puts "   Name:".ljust(11) + "-".center(8) + "#{student[:name]}"
      puts "   Cohort:".ljust(11) + "-".center(8) + "#{student[:cohort]}"
      puts ""
end

puts student_data
