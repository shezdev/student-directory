# Let's put all of the students into an array
# Updating students from an array to an 'array of arrays'
students = [
  ["Dr. Hannibal Lecter", :november],
  ["Darth Vader", :november],
  ["Nurse Ratched", :november],
  ["Michael Corleone", :november],
  ["Alex DeLarge", :november],
  ["The Wicked Witch of the West", :november],
  ["Terminator", :november],
  ["Freddy Krueger", :november],
  ["The Joker", :november],
  ["Joffrey Baratheon", :november],
  ["Norman Bates", :november]
]

#and print them
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# Iterate over the students array to print out all the values!
def print(students) # rename argument from names to students
  students.each do |student|
    puts "#{student[0]} (#{student[1]} cohort)" #updated this too
  end # end of .each
end # end of print function

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end # end of print_footer function

#Nothing happens UNTIL we call the methods:
print_header # call to print_header function
print(students) # call to print function which passes the array called students as an argument.
print_footer(students) # call to print_footer which passes the array called students as an argument.
