class SpartansController < ApplicationController

  def index
    @spartans = Spartan.all
  end

  def show
    @spartan = Spartan.find(params[:id])
  end

  
  
end