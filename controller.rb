require( 'sinatra')
require( 'sinatra/contrib/all')
require( 'pry')

require_relative('./models/student.rb')

get '/hogwarts/students' do
  @students = Student.all
  erb(:students)
end