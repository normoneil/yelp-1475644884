class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new
    @restaurant.name = params[:name]
    @restaurant.street = params[:street]
    @restaurant.city = params[:city]
    @restaurant.state = params[:state]
    @restaurant.zip = params[:zip]
    @restaurant.neighborhood = params[:neighborhood]
    @restaurant.average_stars = params[:average_stars]
    @restaurant.total_reviews = params[:total_reviews]
    @restaurant.price = params[:price]
    @restaurant.description = params[:description]
    @restaurant.cover_image = params[:cover_image]

    if @restaurant.save
      redirect_to "/restaurants", :notice => "Restaurant created successfully."
    else
      render 'new'
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    @restaurant.name = params[:name]
    @restaurant.street = params[:street]
    @restaurant.city = params[:city]
    @restaurant.state = params[:state]
    @restaurant.zip = params[:zip]
    @restaurant.neighborhood = params[:neighborhood]
    @restaurant.average_stars = params[:average_stars]
    @restaurant.total_reviews = params[:total_reviews]
    @restaurant.price = params[:price]
    @restaurant.description = params[:description]
    @restaurant.cover_image = params[:cover_image]

    if @restaurant.save
      redirect_to "/restaurants", :notice => "Restaurant updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])

    @restaurant.destroy

    redirect_to "/restaurants", :notice => "Restaurant deleted."
  end
end
