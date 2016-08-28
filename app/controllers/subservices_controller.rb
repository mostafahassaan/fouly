class SubservicesController < ApplicationController
    def show
      @subservice = Subservice.find(params[:id])
    end
end
