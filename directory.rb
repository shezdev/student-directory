# student_count = 11
# Let's put all of the students into an array
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
#and print them
puts "The students of Villains Academy"
puts "-------------"
# Iterate over the students array to print out all the values!
# On the very first iteration, it will take the first value from the array
# ("Dr. Hannibal Lecter") and assign it to the variable student.
# Then, it will execute the block of code (puts student) that will print it
# to the screen
students.each do |student|
  puts student
end

=begin
puts students[0]
puts students[1]
puts students[2]
puts students[3]
puts students[4]
puts students[5]
puts students[6]
puts students[7]
puts students[8]
puts students[9]
puts students[10]

# First we print the list of students
puts "The students of Villains Academy"
puts "-------------"
puts "Dr. Hannibal Lecter"
puts "Darth Vader"
puts "Nurse Ratched"
puts "Michael Corleone"
puts "Alex DeLarge"
puts "The Wicked Witch of the West"
puts "Terminator"
puts "Freddy Krueger"
puts "The Joker"
puts "Joffrey Baratheon"
puts "Norman Bates"
# Finally, we print the list of students
#print "Overall, we have "
# It's important that print() doesn't add new line characters
#print student_count #11
#puts " great students"
=end

#Finally, we print the total number of students
# puts "Overall, we have #{student_count} great students"
# Using the array's .count method on students[]
puts "Overall, we have #{students.count} great students"
