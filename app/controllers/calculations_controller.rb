class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end
  def loan_payment
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
     render("square_root.html.erb")
  end

end
