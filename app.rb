require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
		reverse_name = params[:name].reverse
		"#{reverse_name}"
  end
  
  get '/square/:number' do
    number = params[:number].to_i
    "#{number * number}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    "#{phrase}" * number
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1}" + " #{word2}" + " #{word3}" + " #{word4}" + " #{word5}" + "."
  end

#   get "/addnumbers/:number1/:number2" do
# 		@total = params[:number1].to_i + params[:number2].to_i
# 		"Here's your #{@total}"
#   end
  
    get '/:operation/:number1/:number2' do
        operation = params[:operation]
        number1 = params[:number1].to_i
        number2 = params[:number2].to_i
        
        if operation == "multiply"
            last_response = number1 * number2
        elsif operation == "divide"
            last_response = number1 / number2
        elsif operation == "add"
            last_response = number1 + number2
        elsif operation == "subtract"
            last_response = number1 - number2
        end
        last_response.to_s
    end
end