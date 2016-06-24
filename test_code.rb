students = [
{name: "Dr. Hannibal Lecter", cohort: "November", country: "UK", hobby: "Eating"},
{name: "Terminator", cohort: "July", country: "France", hobby: "Terminating"},
{name: "Darth Vader", cohort: "January", country: "Germany", hobby: "Lightsabers"},
{name: "Joker", cohort: "July", country: "USA", hobby: "Killing"},
{name: "Jaws", cohort: "November", country: "Brazil", hobby: "Eating"},
{name: "Jason Bourne Junior", cohort: "November", country: "Africa", hobby: "Shooting"}
]

#get list of existing cohorts
existing_cohorts = students.map {|student| student[:cohort]}.sort.uniq

#first cohort - if the student matches the existing cohort print the info
students.each do |student|
  if student[:cohort] == existing_cohorts[0]
    puts "   Name:".ljust(11) + "-".center(8) + "#{student[:name]}"
    puts "   Cohort:".ljust(11) + "-".center(8) + "#{student[:cohort]}"
    puts "   Country:".ljust(11) + "-".center(8) + "#{student[:country]}"
    puts "   Hobby:".ljust(11) + "-".center(8) + "#{student[:hobby]}"
    puts ""
  end
end

#second cohort
students.each do |student|
  if student[:cohort] == existing_cohorts[1]
    puts "   Name:".ljust(11) + "-".center(8) + "#{student[:name]}"
    puts "   Cohort:".ljust(11) + "-".center(8) + "#{student[:cohort]}"
    puts "   Country:".ljust(11) + "-".center(8) + "#{student[:country]}"
    puts "   Hobby:".ljust(11) + "-".center(8) + "#{student[:hobby]}"
    puts ""
  end
end

#third cohort
students.each do |student|
  if student[:cohort] == existing_cohorts[2]
    puts "   Name:".ljust(11) + "-".center(8) + "#{student[:name]}"
    puts "   Cohort:".ljust(11) + "-".center(8) + "#{student[:cohort]}"
    puts "   Country:".ljust(11) + "-".center(8) + "#{student[:country]}"
    puts "   Hobby:".ljust(11) + "-".center(8) + "#{student[:hobby]}"
    puts ""
  end
end
