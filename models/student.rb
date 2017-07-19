require_relative ('../db/sql_runner.rb')

class Student

attr_reader :id, :first_name, :last_name, :house_id

def initialize( options )
  @id = options['id'].to_i
  @first_name = options['first_name']
  @last_name = options['last_name']
  # @house_id = options['house_id'].to_i
end

def save()
  sql = "INSERT INTO students (first_name, last_name)
  VALUES
  ('#{@first_name}', '#{@last_name}')
  RETURNING id;"
  new_student = SqlRunner.run(sql).first
  @id = new_student['id'].to_i
end




def self.find(id)
  sql = "SELECT * FROM students WHERE id = #{id};"
  student = SqlRunner.run(sql)
  result = Student.new( student.first )
  return result
end

def self.all()
sql = 'SELECT * FROM students'
students = SqlRunner.run(sql)
result = students.map { |student| Student.new(student)}
return result
end


def self.delete_all()
  sql = "DELETE FROM students;"
  SqlRunner.run(sql)
end


end