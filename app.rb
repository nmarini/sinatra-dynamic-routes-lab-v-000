require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    answer = ' '
    params[:number].to_i.times do
        answer += params[:phrase]
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if params[:operation] == "add"
      @operation = '+'
    elsif params[:operation] == "subtract"
      @operation = '-'
    elsif params[:operation] == "divide"
      @operation = '/'
    elsif params[:operation] == "multiply"
      @operation = '*'
    end

    @number1 @operation @number2
  end

end
