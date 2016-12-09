 # Replace students array with a function that gets the names of students from user input
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #Create an empty array to store our future students
  students = []
  #Get the name of 1st student and discard the return character
  name = gets.chomp
  #While the name is not empty, repeat this code:
  while !name.empty? do
    # add the student hash to the array (NOTE << is called the SHOVEL operator - used to add new elements to an array)
    students << {name: name, cohort: :november} # :november is a ruby symbol
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end # end of while loop
# return the array of students (that we'll assign to the variable students
# and then pass to other methods for printing on the screen as a list).
students
end # end of input_students function

#and print them
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
# Using each.with_index(1) to print a number (starting at index 1) before the name of each student, e.g. "1. Dr. Hannibal Lecter"?
    students.each.with_index(1) do |student, index| # added index here
      puts "#{index}: #{student[:name]} (#{student[:cohort]} cohort)" #added index here too
  end # end of .each
end # end of print function

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end # end of print_footer function

#Nothing happens UNTIL we call the methods:
students = input_students # Result of Call to input_students function is assigned to student variable
print_header # call to print_header function
print(students) # call to print function which passes the array called students as an argument.
print_footer(students) # call to print_footer which passes the array called students as an argument.
