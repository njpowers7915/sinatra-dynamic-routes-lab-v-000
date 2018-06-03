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
  
  
    
end