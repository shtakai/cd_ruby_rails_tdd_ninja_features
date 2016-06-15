class NinjasController < ApplicationController
  def new
    @ninja = Ninja.new
  end

  def success
  end

  def create
    @ninja = Ninja.new(ninja_params)
    if @ninja.save
      flash[:notice] = 'Form submitted successfully'
      redirect_to '/ninjas/success'
    else
      flash[:alert] = {}
      flash[:alert][:message] = "Sorry, failed to submit form"
      flash[:alert][:ninja_name] =  "Name is required" if @ninja.errors.messages[:ninja_name]
      flash[:alert][:ninja_description] =  "Description is required" if @ninja.errors.messages[:ninja_description]
      render 'ninjas/new'
    end

  end

  private

  def ninja_params
    params.require(:ninja).permit(:ninja_name, :ninja_description)
  end
end
