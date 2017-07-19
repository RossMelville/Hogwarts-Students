require_relative ('../models/student.rb')
require_relative ('../models/house.rb')

require ('pry')

Student.delete_all()
House.delete_all()

house1 = House.new ({'name' => 'Gryffindor', 'logo' => 'gryffindor.jpg'} )
house1.save()
house2 = House.new ({'name' => 'Ravenclaw', 'logo' => 'ravenclaw.jpg'} )
house2.save()
house3 = House.new ({'name' => 'Hufflepuff', 'logo' => 'hufflepuff.jpg'} )
house3.save()
house4 = House.new ({'name' => 'Slytherin', 'logo' => 'slytherin.jpg'} )
house4.save()


# student1 = Student.new ({'first_name' => 'Harry', 'last_name' => 'Potter', 'house_id' => '14'})
# student1.save()
# student2 = Student.new ({'first_name' => 'Ron', 'last_name' => 'Weasley', 'house_id' => '15' })
# student2.save()