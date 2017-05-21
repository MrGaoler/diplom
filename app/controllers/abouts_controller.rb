class AboutsController < ApplicationController
  def show
    @resource = AboutPage.load
    @resource.build_image unless @resource.image
  end
end
