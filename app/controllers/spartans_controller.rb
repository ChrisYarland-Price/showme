class SpartansController < ApplicationController
  before_action :set_spartan, only: [:show, :edit, :update]

  # Redirected to home if not an admin
  def index
    if spartan_signed_in? && current_spartan.admin
        @spartans = Spartan.all
    else
      redirect_to '/'
    end
  end

  def show

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

  def edit

  end

  def update
    @spartan.update(spartan_params)
    redirect_to @spartan
  end

  private

  def set_spartan
    @spartan = Spartan.find(params[:id])
  end

  def spartan_params
    params.require(:spartan).permit(:name, :email, :image, :bio, :course, :admin)
  end
  
end