#Array storing student names
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #Creating an empty array
  students = []
  #Get first name
  name = gets.chomp
  #Loop while name isnt empty
  while !name.empty? do
    #Adds the student hash to array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students."
    #Gets next name
    name = gets.chomp
  end
  #Returns Array
  students
end



def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
puts "Overall, we have #{names.count} great students"
end
students = input_students
print_header
print(students)
print_footer(students)
