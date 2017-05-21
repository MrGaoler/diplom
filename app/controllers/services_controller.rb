class ServicesController < ApplicationController
  def show
    @resource = ServicesPage.load
    @resource.build_image unless @resource.image
  end
end
