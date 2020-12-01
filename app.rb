require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    num = params[:number]
    product = num.to_i * num.to_i
    product.to_s
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    answer = ""
    num.times { answer += phrase }
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    first = params[:word1]
    second = params[:word2]
    third = params[:word3]
    fourth = params[:word4]
    fifth = params[:word5]
    "#{first} #{second} #{third} #{fourth} #{fifth}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case operation
    when 'add'
      answer = num1 + num2
    when 'subtract'
      answer = num1 - num2
    when 'multiply'
      answer = num1 * num2
    when 'divide'
      answer = num1 / num2
    end
    answer.to_s
  end
end