require_relative ('../db/sql_runner.rb')

class Student

attr_reader :id, :first_name, :last_name, :house_id

def initialize( options )
  @id = options['id'].to_i
  @first_name = options['first_name']
  @last_name = options['last_name']
  @house_id = options['house_id'].to_i
end




end