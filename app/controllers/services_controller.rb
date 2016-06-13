class ServicesController < ApplicationController
  def show
    @service = Service.find(params[:id])
    @subservices = @service.subservices.all
  end

  def new
  end
end
