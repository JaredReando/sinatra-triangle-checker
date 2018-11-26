require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')


get('/') do
  erb(:input)
end

get('/output') do
  @side_one = params.fetch('side_one')
  @side_two = params.fetch('side_two')
  @side_three = params.fetch('side_three')

  test_triangle = Triangle.new(@side_one, @side_two, @side_three)

  if !(test_triangle.valid_triangle?)
    @result = "This is not a triangle!"
  elsif test_triangle.isosceles?
    @result = "This is an isosceles triangle!"
  elsif test_triangle.scalene?
    @result = "This is a scalene triangle!"
  else test_triangle.equilateral?
    @result = "This is an equilateral triangle!"
  end
  erb(:output)
end
