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
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# Iterate over the students array to print out all the values!
def print(names)
  names.each do |name|
    puts name
  end # end of .each
end # end of print function

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end # end of print_footer function

#Nothing happens UNTIL we call the methods:
print_header # call to print_header function
print(students) # call to print function passing the array called students as an argument.
print_footer(students) # call to print_footer passing the array called students as an argument.
