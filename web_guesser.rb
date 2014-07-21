require 'sinatra'
require 'sinatra/reloader'
require 'pry'

SECRET_NUMBER = rand(101)

get  '/' do
  guess   = params['guess'].to_i
  message = check_guess(guess)
  erb :index, :locals => { :message => message }
end


def check_guess(guess)
  'please guess'
  case
  when guess == 0 then "please guess"
  when guess > SECRET_NUMBER then 'too high'
  when guess < SECRET_NUMBER then 'too low'
  when guess == SECRET_NUMBER then 'you guessed correctly'
  end
end
