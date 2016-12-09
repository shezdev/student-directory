# Let's put all of the students into an array
# Updating students from an 'array of arrays' to an array of HASHES!
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

#and print them
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# Iterate over the students array to print out all the values!
def print(students) # rename argument from names to students
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)" #updated this to ref the hashes 
  end # end of .each
end # end of print function

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end # end of print_footer function

#Nothing happens UNTIL we call the methods:
print_header # call to print_header function
print(students) # call to print function which passes the array called students as an argument.
print_footer(students) # call to print_footer which passes the array called students as an argument.
