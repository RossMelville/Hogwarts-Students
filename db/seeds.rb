require_relative ('../models/student.rb')

require ('pry')

Student.delete_all()

student1 = Student.new ({'first_name' => 'Harry', 'last_name' => 'Potter'})
student1.save()
student2 = Student.new ({'first_name' => 'Ron', 'last_name' => 'Weasley'})
student2.save()

p Student.all()
p Student.find(34)