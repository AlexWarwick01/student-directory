#Array storing student names
@students = []
def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process_selection
  case selection
  when 1
    @students = input_students
  when 2
    show_students
  when 3
    save_students
  when 9
    eixt
  else
    puts "I dont know what you mean... Try again."
  end
end

def interactive_menu
loop do
  print_menu
  process(gets.chomp)
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
    @students << {name: name, cohort: cohort, height: height, dob: dob}
    puts "Now we have #{@students.count} students."
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

def print_students_list
  puts "What Letter would you like to lookup"
  letchoice = gets.chomp
  i = 0
  @students.each do |student|
    i += 1
  if student[:name].length < 12
    if student[:name].start_with?(letchoice)
      puts "#{i}: #{student[:name]} Height: #{student[:height]} D.O.B: #{student[:dob]} (#{student[:cohort]} cohort) ".ljust(75).center(100)
    end
  end
end
end

def print_footer
puts "Overall, we have #{@students.count} great students"
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort], student[:height], student[:dob]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end
interactive_menu
