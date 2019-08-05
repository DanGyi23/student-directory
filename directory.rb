def print_header
  puts "The students of Villains Academy\n-------------"
end

def print(students)
  students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
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
  #returns complete array with all added names
  students
end

def interactive_menu
  students = []
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"

    selection = gets.chomp

    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit
    else
      puts "I don't know what you mean, try again"
    end

  end
end

interactive_menu
