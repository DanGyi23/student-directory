# places all the students in an array
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

# wrap everything in methods
def print_header
  puts "The students of Villains Academy\n-------------"
end

def print_students(names)
  names.each { |student| puts student }
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# call the methods with students as param for print_students and print_footer
print_header
print_students(students)
print_footer(students)
