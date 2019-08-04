def print_header
  puts "The students of Villains Academy\n-------------"
end

def print(students)
  students.each.with_index(1) do |student,index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort) // DOB #{student[:dob]} // Hobbies: #{student[:hobbies]}"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# added in hobbies and dob inputs
def input_students
  students = []
  puts "Please enter the names of the students"
  puts "To finish, just hit return three times"

  name = gets.chomp
  puts "Please enter this student's hobbies"
  hobbies = gets.chomp
  puts "Please enter this student's date of birth (dd/mm/yyyy)"
  dob = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :November, hobbies: hobbies, dob: dob}
    if students.size == 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end
    name = gets.chomp
    puts "Please enter this student's hobbies"
    hobbies = gets.chomp
    puts "Please enter this student's date of birth (dd/mm/yyyy)"
    dob = gets.chomp
  end
  students
end

students = input_students
print_header
print(students)
print_footer(students)
