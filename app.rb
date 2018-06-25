require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    "#{num*num}"
  end

  get '/say/:number/:phrase' do
    n = params[:number].to_i
    phrase = params[:phrase]
    str = ""
    n.times do
      str += "#{phrase}"
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    if  op == 'add'
      "#{n1 + n2}"
    elsif op == 'subtract'
      "#{n1 - n2}"
    elsif op == 'multiply'
      "#{n1*n2}"
    elsif op == 'divide'
      "#{n1/n2}"
    end
  end

end
