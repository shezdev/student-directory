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
    students << {name: name, cohort: :november, country_of_birth: :UK, language: :English} # :november is a ruby symbol
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
  puts "The students of Villains Academy that begin with 'A' and are less than 12 characters, include: "
  puts "-----------------------------------------------------------------------------------------------"
end

def print(students)
=begin
    # Using each.with_index(1) to print a number (starting at index 1) before the name of each student, e.g. "1. Dr. Hannibal Lecter"?
    students.each.with_index(1) do |student, index| # added index here
      ## Added condition for length of name < 12 characters
      puts "#{index}: #{student[:name]} (#{student[:cohort]} cohort)" if (student[:name][0] == "A" && student[:name].length < 12)
    end # end of .each
=end

# Rewrite the print method that prints all students using while or until control flow methods
    count = 0
    while count < students.length do
      #puts "#{students[count][:name]} (#{students[count][:cohort]} cohort)"
      # Added count +1 so the numbering starts from 1 instead of 0
      # Added .center(100) onto the end of "" to center output
puts "#{count +1}: #{students[count][:name]} (#{students[count][:cohort]} cohort, Birthplace: #{students[count][:country_of_birth]}, Speaks: #{students[count][:language]})".center(100) if (students[count][:name][0] == "A"  && students[count][:name].length < 12)
      count += 1
    end

end # end of print function


def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end # end of print_footer function

#Nothing happens UNTIL we call the methods:
students = input_students # Result of Call to input_students function is assigned to student variable
print_header # call to print_header function
print(students) # call to print function which passes the array called students as an argument.
print_footer(students) # call to print_footer which passes the array called students as an argument.
