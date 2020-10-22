require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/:operation/:number1/:number2' do
    @result = params[:num1].to_i * params[:num2].to_i
    "#{@result}"
    


   @operation = params[:operation]
        @num1 = params[:number1].to_i
        @num2 = params[:number2].to_i
        case @operation
          when "add"
          "#{@num1 + @num2}"
         when "subtract"
          "#{@num2 - @num1}"
         when "multiply"
          "#{@num1 * @num2}"
         when "divide"
          "#{@num1 / @num2}"
        end 
      end 

end