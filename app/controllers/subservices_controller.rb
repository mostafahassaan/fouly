class SubservicesController < ApplicationController
    def show
      @subservice = Subservice.find(params[:id])
      @images = Image.where(subservice_id: @subservice.id).all
    end
end
