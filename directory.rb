#first we print the list of students
students = [
 {name: "Dr. Hannibal Lecter", cohort: :november},
 {name: "Darth Vader", cohort: :november},
 {name: "Nurse Ratched", cohort: :november},
 {name: "Michael Corleone", cohort: :november},
 {name: "Alex DeLarge", cohort: :november},
 {name: "The Wicked Witch of the West", cohort: :november},
 {name: "Terminator", cohort: :november},
 {name: "Freddy Krueger", cohort: :november},
 {name: "The Joker", cohort: :november},
 {name: "Joffrey Baratheon", cohort: :november},
 {name: "Norman Bates", cohort: :november}
]

def input_students
  puts "Please enter names of students"
  puts "To finish, just hit return twice"
  #create empty array
  students = []
  #get first name
  name = gets.chomp
  #while name is not empty, repeat this code\
  while !name.empty? do
    students << {name: name, cohort: :november }
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  index = 0
  students.each_with_index do |student, index|
    index += 1
    puts "#{index} #{student[:name]} #{student[:cohort]} cohort"
  end

puts 'select letter to display all students begining with that letter'
letter = gets.chomp
  students.each do |student|
    if student[:name].start_with?(letter)
      puts "all students beginging with the letter #{letter}: #{student[:name]}"
    end
    end
  end

def show12(students)
  puts "name of students who have less then 12 charcters in their name :"
  students.select do |student|
    if student[:name].length < 12
      puts student[:name]
    end
  end
end

#finally, we print the total number of students
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end


print_header
students = input_students
print(students)
show12(students)
print_footer(students)
