students = [
{name: "Dr. Hannibal Lecter", cohort: "November", country: "UK", hobby: "Eating"},
{name: "Terminator", cohort: "July", country: "France", hobby: "Terminating"},
{name: "Darth Vader", cohort: "January", country: "Germany", hobby: "Lightsabers"},
{name: "Joker", cohort: "July", country: "USA", hobby: "Killing"},
{name: "Jaws", cohort: "November", country: "Brazil", hobby: "Eating"},
{name: "Jason Bourne Junior", cohort: "November", country: "Africa", hobby: "Shooting"}
]

index = 0

while index < students.length
  puts "#{index + 1}. Name:".ljust(11) + "-".center(8) + "#{students[index][:name]}"
  puts "   Cohort:".ljust(11) + "-".center(8) + "#{students[index][:cohort]}"
  puts "   Country:".ljust(11) + "-".center(8) + "#{students[index][:country]}"
  puts "   Hobby:".ljust(11) + "-".center(8) + "#{students[index][:hobby]}"
  puts ""
  index +=1
end
