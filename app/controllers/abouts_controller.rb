class AboutsController < ApplicationController
  def show
    @resource = Cms::AboutPage.load
    @resource.build_image unless @resource.image
  end
end
