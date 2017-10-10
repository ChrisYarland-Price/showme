class SpartansController < ApplicationController


  def index
    if current_spartan.admin == true
      @spartans = Spartan.all
    else
      redirect_to '/'
    end
  end

  def show
    @spartan = Spartan.find(params[:id])
  end


  
  
end