class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def new
  end

  def edit
  end

  def show
    @country = Country.find params[:id]
  end
end
