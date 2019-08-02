#Array storing student names
def interactive_menu
loop do
  students = []
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
  selection = gets.chomp
  case selection
  when 1
    students = input_students
  when 2
    print_header
    print(students)
    print_footer(students)
  when 9
    eixt
  else
    puts "I dont know what you mean... Try again."
  end
end
end
def input_students
  puts "Please enter the names followed by their cohort of the students"
  puts "To finish, just hit return twice"
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
interactive_menu
