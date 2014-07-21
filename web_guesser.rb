require 'sinatra'
require 'sinatra/reloader'

random_number = rand(101)

get  '/' do
  "THE RANDOM NUMBER IS #{random_number}"
end
