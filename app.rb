require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse!
  end
  
  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    count = 0
    until count == @number.to_i
      "#{@phrase.split('%20').join(' ')}"
      count += 1
    end
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    
end