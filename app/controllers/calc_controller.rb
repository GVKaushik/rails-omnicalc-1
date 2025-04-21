class CalcController < ApplicationController

  def homepage
    render({:template=>"calc_templates/homepage"})
  end

  def square
    render({:template=>"calc_templates/square"})
  end

  def square_root
    render({:template=>"calc_templates/square_root"})
  end

  def payment
    render({:template=>"calc_templates/payment"})
  end

  def random
    render({:template=>"calc_templates/random"})
  end

  def square_results
    @user_number = params["number"].to_f
    @result = @user_number*@user_number
    render({:template=>"calc_templates/square_results"})
  end

  def square_root_results
    @user_number = params["user_number"].to_f  # Convert the input to a Float
    @result = Math.sqrt(@user_number)
    render({:template=>"calc_templates/square_root_results"})
  end

  def payment_results
    @apr = params["user_apr"].to_f
    @formatted_rate = @apr.to_fs(:percentage, { :precision => 4 })
    @years = params["user_years"].to_f
    @principal = params["user_pv"].to_f
    @rate = @apr/1200
    @n=-@years*12
    @numerator = @rate*@principal
    @denominator = 1 - ((1+@rate)**(@n))
    @payment = @numerator/@denominator
    render({:template=>"calc_templates/payment_results"})
  end

  def random_results
    @max=params.fetch("user_max").to_f
    @min=params.fetch("user_min").to_f
    @rand = rand(@min..@max)

    render({:template=>"calc_templates/random_results"})
  end

  

end
