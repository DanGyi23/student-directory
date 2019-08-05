@max_size = []

def print_header
  puts "The students of Villains Academy".center(max_len)
  puts "-------------".center(max_len)
end

def print(students)
  students.each.with_index(1) do |student,index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort) // DOB #{student[:dob]} // Hobbies: #{student[:hobbies]}".center(max_len)
  end
end

def print_footer(names)
  if names.size == 1
    puts "Overall, we have #{names.count} great student".center(max_len)
  else
    puts "Overall, we have #{names.count} great students".center(max_len)
  end
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
  puts "Please enter which cohort you're part of"
  cohort = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: cohort, hobbies: hobbies, dob: dob}
    @max_size << (name + hobbies + dob)
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
    puts "Please enter which cohort you're part of"
    cohort = gets.chomp
  end
  @max_size
  students
end

def max_len
  @max_size.max_by(&:length).length + 33
end

students = input_students
print_header
print(students)
print_footer(students)
