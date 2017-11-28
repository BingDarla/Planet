class SightsController < ApplicationController
  before_action :check_if_logged_in
  def edit
  end

  def new
    @sight = Sight.new
  end
  def create
    country = @country
    @sight = Sight.create sight_param
    @country.sights << @sight


  end

  def show
    # raise params.inspect

    @sight = Sight.find params[:id]
  end

  def delete
  end
  private
  def sight_param
    params.require(:sight).permit(:name, :location, :image, :info, :category, :latitude, :longtitude)


  end
end
