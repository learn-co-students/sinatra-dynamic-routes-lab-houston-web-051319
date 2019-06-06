require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    say = ''
    (params[:number].to_i).times do
      say += params[:phrase]
    end
    say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    solution = 0
    case params[:operation]
    when "add"
      solution = (params[:number1].to_i + params[:number2].to_i)
    when "subtract"
      solution = (params[:number1].to_i - params[:number2].to_i)
    when "multiply"
      solution = (params[:number1].to_i * params[:number2].to_i)
    when "divide"
      solution = (params[:number1].to_i / params[:number2].to_i)
    end
    solution.to_s
  end

  

end