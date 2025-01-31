require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @revname = params[:name].reverse
    "#{@revname}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @numphrase = ''
    params[:number].to_i.times {@numphrase += params[:phrase]}
    @numphrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      result = (@n1 + @n2).to_s
    when 'subtract'
      result = (@n1 - @n2).to_s
    when 'multiply'
      result = (@n1 * @n2).to_s
    when 'divide'
      result = (@n1 / @n2).to_s
    end

    result 
  end

end
