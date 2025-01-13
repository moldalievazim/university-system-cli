require_relative "student"

class University
  def initialize
    @students = []
  end

  def run
    loop do
      puts "\n"
      puts "Welcome to the University CLI!"
      puts "1. Register a Student"
      puts "2. List all Students"
      puts "3. Exit"
      print "Choose an option: "
      option = gets.chomp.to_i
      puts "\n"
      case option
      when 1
        add_student
      when 2
        list_students
      when 3
        puts "Thank you for visiting the University CLI. Goodbye!"
        break
      else
        puts "Invalid option. Please try again."
      end
    end
  end

  def add_student
    print "Enter student name: "
    name = gets.chomp
    print "Enter student GPA: "
    gpa = gets.chomp
    @students << Student.new(name, gpa)
    puts "Student registered successfully!"
  end

  def list_students
    puts "Students in the university:"
    @students.each do |student|
      puts student
    end
  end
end
