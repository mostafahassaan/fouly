class ServicesController < ApplicationController
  def show
    @service = Service.find(params[:id])
    @subservices = @service.subservices.all
    @services = Service.all
    @images = Image.where(service_id: @service.id).all
  end

  def new
  end
end
