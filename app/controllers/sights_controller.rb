class SightsController < ApplicationController
  before_action :check_if_logged_in

  def new
    @country = Country.find params[:country_id]
    @sight = Sight.new
  end

  def create

    @country = Country.find params[:country_id]

    sight = Sight.create sight_param
    @country.sights << sight
    redirect_to country_path(@country)
  end

  def edit
    @country = Country.find params[:country_id]
    @sight = Sight.find params[:id]

  end

  def update
    country =Country.find params[:country_id]
    sight = Sight.find params[:id]
    sight.update sight_param
    redirect_to country_sight_path(country,sight)

  end



  def show
    # raise params.inspect

    @sight = Sight.find params[:id]
  end

  def destroy
    country = Country.find params[:country_id]
    sight = Sight.find params[:id]
    sight.destroy
    redirect_to country_path(country)

  end
  private
  def sight_param
    params.require(:sight).permit(:name, :location, :image, :info, :category, :latitude, :longtitude)


  end
end
