class SpartansController < ApplicationController


  def index
    if spartan_signed_in?
      if current_spartan.admin
        @spartans = Spartan.all
      else
        redirect_to '/'
      end
    else
      redirect_to '/'
    end
  end

  def show
    @spartan = Spartan.find(params[:id])
  end

  def destroy
    @spartan = Spartan.find(params[:id])
    @spartan.destroy!
    if spartan_signed_in?
      if current_spartan.admin
        redirect_to '/spartans'
      else
        redirect_to '/'
      end
    else
      redirect_to '/'
    end
  end

  
  
end