require_relative 'config/environment'

class App < Sinatra::Base
  
	get '/reversename/:name' do
		@name = params[:name]
		@rev = @name.reverse
		"#{@rev}"
	end

	get '/square/:number' do
		@number = params[:number]
		@sqr = (@number.to_i)*(@number.to_i)
		"#{@sqr}"
	end

	get '/say/:number/:phrase' do
		@num = params[:number].to_i
		@phrase = params[:phrase]
		@phrase * @num
	end

	# get 'say/:number/:phrase' do
	# 	@num = params[:number].to_i
	# 	@phrase = params[:phrase]
	# 	@speek = []
	# 	@num.times { @speek << @phrase }
	# 	@say = @speek.join(" ")
	# 	"#{@say}"
	# end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		@arr = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
		@say = @arr.join(" ")
		"#{@say}."
	end

	get '/:operation/:number1/:number2' do
		@num1 = params[:number1].to_i
		@num2 = params[:number2].to_i
		@op = params[:operation]
		case @op
		when "add"
			@tot = @num1 + @num2
			"#{@tot}"
		when "subtract"
			@tot = @num1 - @num2
			"#{@tot}"
		when "multiply"
			@tot = @num1 * @num2
			"#{@tot}"
		when "divide"
			@tot = @num1 / @num2
			"#{@tot}"
		end
	end
end