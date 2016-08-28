class ServicesController < ApplicationController
  def show
    @service = Service.find(params[:id])
    @subservices = @service.subservices.all
    @services = Service.all
  end

  def new
  end
end
