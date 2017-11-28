class CountriesController < ApplicationController
  before_action :check_if_logged_in
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
