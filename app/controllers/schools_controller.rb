class SchoolsController < ApplicationController
  def index
  	@schools = School.all
  end

  def show
  	@school = School.find(params[:id])
  end


  private
  def school_params
  	params.require(:schools).permit(:name)
  end
end