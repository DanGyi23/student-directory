#  make students accessible in all methods
@students = []

def print_header
  puts "The students of Villains Academy\n-------------"
end

def print(students)
  @students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# name injector - asks user for names of students, adds them to the array, then
# puts a running count.
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  name = gets.chomp

  while !name.empty? do
    @students << {name: name, cohort: :November}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
  end
  @students
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3, Save the students to students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print(@students)
  print_footer(@students)
end

def process(selection)
  case selection
  when "1"
    @students = input_students
  when "2"
    show_students
  when "3"
    save_students
  when "9"
    exit
  else
    puts "I don't know what you mean, try again"
  end
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(", ")
    file.puts csv_line
  end
  file.close
end

def interactive_menu
  loop do
    print_menu
    # pass process as a method with user input as argument.
    process(gets.chomp)
  end
end

interactive_menu
