require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  # get '/' do
  #   "hello world"
  # end

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @product = @num*@num
    "#{@product}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if operation == "add"
      response = num1 + num2
    elsif operation == "subtract"
      response = num1 - num2
    elsif operation == "multiply"
      response = num1 * num2
    elsif operation == "divide"
      response = num1 / num2
    end
    "#{response}"
  end

end
