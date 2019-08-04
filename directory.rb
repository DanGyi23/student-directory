def print_header
  puts "The students of Villains Academy\n-------------"
end

def print(students)
  index = 0
  while true do
    puts "#{students[index][:name]} (#{students[index][:cohort]} cohort)"
    index += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# name injector - asks user for names of students, adds them to the array, then
# puts a running count.
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []
  name = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :November}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  # returns complete array with all added names
  students
end

students = input_students
print_header
print(students)
print_footer(students)
