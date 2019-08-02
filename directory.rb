#Array storing student names
def input_students
  puts "Please enter the names followed by their cohort of the students"
  puts "To finish, just hit return twice"
  #Creating an empty array
  students = []
  #Get first name
  name = gets.chomp
  cohort = gets.chomp
  height = gets.chomp
  dob = gets.chomp
  #Loop while name isnt empty
  while !name.empty? do
    #Adds the student hash to array
    students << {name: name, cohort: cohort, height: height, dob: dob}
    puts "Now we have #{students.count} students."
    #Gets next name
    name = gets.chomp
    cohort = gets.chomp
    height = gets.chomp
    dob = gets.chomp
  end
  #Returns Array
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  puts "What Letter would you like to lookup"
  letchoice = gets.chomp
  i = 0
  students.each do |student|
    i += 1
  if student[:name].length < 12
    if student[:name].start_with?(letchoice)
      puts "#{i}: #{student[:name]} Height: #{student[:height]} D.O.B: #{student[:dob]} (#{student[:cohort]} cohort) ".ljust(75).center(100)
    end
  end
end
end
def print_footer(names)
puts "Overall, we have #{names.count} great students"
end



students = input_students
print_header
print(students)
print_footer(students)
