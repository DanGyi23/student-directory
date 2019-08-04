puts "The students of Villains Academy\n-------------"

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

#prints students, one per line
students.each { |student| puts student }

# finally we print the count of the students, using print to avoid newline
puts "Overall, we have #{students.count} great students"
