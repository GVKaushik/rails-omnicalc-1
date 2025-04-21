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
end
