 # Replace students array with a function that gets the names of students from user input
def input_students
puts "Please enter the names of the students."
  #puts "To finish just hit return twice."
  students = []
  name = gets.chomp
  name = name.to_sym
  while !name.empty? do
    puts "Please enter the cohort of the student."
    cohort = gets.chomp
    cohorts = ["January","February","March","April","May","June","July","August","September","October","November","December"]
        #  any? will return true if at least one of the collection members is not false or nil.
        while !cohorts.any? { |m| cohort.include? m} # i.e. any is false
            puts "Please type in the cohort month in again? e.g January"
            cohort = gets.chomp
        end # end of while on line 37
    cohort = cohort.to_sym

  # add the student hash to the array (NOTE << is called the SHOVEL operator - used to add new elements to an array)
  students << {name: name, cohort: cohort, country_of_birth: :UK, language: :English} # :november is a ruby symbol
    puts "Now we have #{students.count} students!"
    puts "Please enter next student or hit return to finish."
    name = gets.chomp
    name = name.to_sym
  end
  if name.empty?
    name = " "
  end # end of if
    puts "Now we have #{students.count} students!"
    # return the array of students
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
