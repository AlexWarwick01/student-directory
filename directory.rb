#Array storing student names
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
  "Joffery Baratheon",
  "Norman Bates"
]
#Put`es Names
puts "The students of Villains Academy"
puts "-------------"
students.each do |student|
  puts student
end
#Displays total students
puts "Overall, we have #{students.count} great students"
