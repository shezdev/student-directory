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
  puts "The students of Villains Academy" # that begin with 'A' and are less than 12 characters, include: "
  puts "---------------------------------" #--------------------------------------------------------------"
end

def print(students)
  # 1. Sort students array by :cohort, and put the result in a new array called sorted
  sorted_by_c = []
  sorted_by_c = students.sort_by do |c|
    c[:cohort]
  end
  #puts sorted_by_c

  ##Result is:
  # {:name=>:Adam, :cohort=>:January, :country_of_birth=>:UK, :language=>:English}
  # {:name=>:Adi, :cohort=>:January, :country_of_birth=>:UK, :language=>:English}
  # {:name=>:Aisha, :cohort=>:March, :country_of_birth=>:UK, :language=>:English}

  # 2. Quick Loop to print the sorted_by_c array i.e. our students ordered by cohort
  sorted_by_c.each do |item|
    puts "(#{item[:cohort]} cohort) - #{item[:name]} | #{item[:country_of_birth]} | #{item[:language]} "
  end # of .each



#2. Conditions print the sorted_by_c array i.e. our students ordered by cohort
#Note how I had to use .to_s on both sides of the condition!!!
#sorted_by_c.each.with_index(1) do |student, index| # added index here

#puts "It is:#{student[:cohort][0]}!"
#puts student[:cohort].instance_of? Symbol # checking the type is a symbol - returns true

#puts "#{index}: #{student[:name]} (#{student[:cohort]} cohort)" if (student[:cohort].to_s == "January".to_s)

#puts "#{index}: #{student[:name]} (#{student[:cohort]} cohort)" if (student[:cohort].to_s == "February".to_s)



 #puts "#{index}: #{student[:name]} (#{student[:cohort]} cohort)" if (student[:cohort].to_s == #"February".to_s)

#jan_cohort = []
#feb_cohort = []
#jan_cohort.push(student[:name]) if (student[:cohort].to_s == "January".to_s)
#feb_cohort.push(student[:name]) if (student[:cohort].to_s == "January".to_s)



#end #
#end test



=begin
    # Using each.with_index(1) to print a number (starting at index 1) before the name of each student, e.g. "1. Dr. Hannibal Lecter"?
    students.each.with_index(1) do |student, index| # added index here
      ## Added condition for length of name < 12 characters
      puts "#{index}: #{student[:name]} (#{student[:cohort]} cohort)" if (student[:name][0] == "A" && student[:name].length < 12)
    end # end of .each


# Rewrite the print method that prints all students using while or until control flow methods
    count = 0
    while count < students.length do
      #puts "#{students[count][:name]} (#{students[count][:cohort]} cohort)"
      # Added count +1 so the numbering starts from 1 instead of 0
      # Added .center(100) onto the end of "" to center output
puts "#{count +1}: #{students[count][:name]} (#{students[count][:cohort]} cohort, Birthplace: #{students[count][:country_of_birth]}, Speaks: #{students[count][:language]})".center(100) if (students[count][:name][0] == "A"  && students[count][:name].length < 12)
      count += 1
    end

# 8. Change the way the users are displayed: print them grouped by cohorts

puts "Students is: #{students}" # an array of hashes

  students.each do |h|      # this is an array of hashes
     h.each do |k,v| # this is the hash
      # Sorting from smallest to largest value
      puts "k is: #{k} and v is: #{v[1]}"

       #puts " Sorting by values in the array is: #{h.sort_by {|k, v| v} }"
       #sorted = []
       #sorted = h.sort_by {|k| k[v]}
       #puts "sorted is #{sorted}"
     end
  end


=end

end # end of print function


def print_footer(names)
  #puts "Overall, we have #{names.count} great students"
  puts "Overall, we have #{names.count} great students" if names.count > 1
  puts "Overall, we have #{names.count} great student" if names.count == 1


end # end of print_footer function

#Nothing happens UNTIL we call the methods:
students = input_students # Result of Call to input_students function is assigned to student variable
print_header # call to print_header function
print(students) # call to print function which passes the array called students as an argument.
print_footer(students) # call to print_footer which passes the array called students as an argument.
