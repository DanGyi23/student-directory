# places all the students in an array
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

# wrap everything in methods
def print_header
  puts "The students of Villains Academy\n-------------"
end

def print(students)
  students.each { |student| puts "#{student[0]} (#{student[1]} cohort)" }
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# call the methods with students as param for print_students and print_footer
print_header
print_students(students)
print_footer(students)
