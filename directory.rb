def print_header
  puts "The students of Villains Academy whose names are shorter than 12 characters\n-------------"
end

def print_only_a(students)
  students.each.with_index(1) do |student,index|
    if student[:name].length <= 12
      puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
    else
      next
    end
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
print_only_a(students)
print_footer(students)
