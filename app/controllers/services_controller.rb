class ServicesController < ApplicationController
  def show
    @resource = Cms::ServicesPage.load
    @resource.build_image unless @resource.image
  end
end
