class SightsController < ApplicationController
  def edit
  end

  def new
  end

  def show
    raise params.inspect
    @sight = Sight.find params[:id]
  end

  def delete
  end
end
