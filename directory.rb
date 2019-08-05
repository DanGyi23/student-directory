@max_size = []
@students = []

def print_header
  puts "The students of Villains Academy".center(max_len)
  puts "-------------".center(max_len)
end

def print(students)
  @students.each.with_index(1) do |student,index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)".center(max_len)
  end
end

def print_footer(names)
  if names.size == 1
    puts "Overall, we have #{names.count} great student".center(max_len)
  else
    puts "Overall, we have #{names.count} great students".center(max_len)
  end
end

  def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"

    name = gets.strip
    puts "Please enter which month this student started"
    cohort = gets.strip

    while !name.empty? do
      @students << {name: name, cohort: cohort}
      @max_size << (name + cohort)
      if @students.size == 1
        puts "Now we have #{@students.count} student"
      else
        puts "Now we have #{@students.count} students"
      end
      name = gets.strip
      puts "Please enter which month this student started"
      cohort = gets.strip
    end
    @max_size
    @students
  end

def max_len
  @max_size.max_by(&:length).length + 33
end

def group_by_cohort(students)
  @students.sort! { |a,b| b[:cohort] <=> a[:cohort] }
end



students = input_students
if students.count == 0
  puts "You didn't enter any students!"
else
  group_by_cohort(students)
  print_header
  print(students)
  print_footer(students)
end
