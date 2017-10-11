class SpartansController < ApplicationController

  # Redirected to home if not an admin
  def index
    if spartan_signed_in? && current_spartan.admin
        @spartans = Spartan.all
    else
      redirect_to '/'
    end
  end

  def show
    @spartan = Spartan.find(params[:id])
  end

  # Redirected to home if not an admin
  def destroy
    @spartan = Spartan.find(params[:id])
    @spartan.destroy!
    if spartan_signed_in? && current_spartan.admin
        redirect_to '/spartans'
    else
      redirect_to '/'
    end
  end

  
  
end