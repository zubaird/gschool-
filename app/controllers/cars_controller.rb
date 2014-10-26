class CarsController < ApplicationController


  def index

  end


  def new

  end

  def create

  #  @car = Car.create(params[:car]) unless Car.create(params[:car]).nil?
  # @car = Car.create(params.require(:car).permit(:make, :year)) unless Car.create(params.require(:car).permit(:make, :year)).nil?
    @car = Car.create(params.require(:car).permit(:make, :year))
    if @car.save
      redirect_to root_path
    else
      render "new"
    end
  end
end


# Display cars on the home page

# A user can edit a car

# A user can delete a car

# Make car params a private method

# Hand roll your routes

# move form to home page
