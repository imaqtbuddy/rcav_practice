class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end
  def loan_payment
    @interest_rate=params["interest_rate"].to_f
    @num_years=params["num_years"].to_i
    @num_months=@num_years*12
    @principal=params["principal"].to_f
    @payment=(((@interest_rate/120000)*@principal)/(1-((1+(@interest_rate/120000))**-@num_months))).to_f
    render("loan_payment.html.erb")
  end
  def random
    @min=params["min"]
    @max=params["max"]
    @rand=rand(@min.to_i..@max.to_i)
    render("random.html.erb")
  end
  def square
    @number=params["number"]
    @number_squared=@number.to_i**2
    render("square.html.erb")
  end
  def square_root
    @number=params["number"]
    @number_sqrt=Math.sqrt(@number.to_i)
#     @integer_test=@number.is_a? Integer
#     b="square_root"
#     if (@integer_test==true)
#       {
#         b="square_root"
#      }
#    else
#     {
#       b="error"
#     }
#   end
# render(b+".html.erb")
render("square_root.html.erb")
end
end
