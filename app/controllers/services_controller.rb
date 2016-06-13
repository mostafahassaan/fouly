class ServicesController < ApplicationController
  def show
    @service = Service.find(params[:id])
  end

  def new
  end
end
