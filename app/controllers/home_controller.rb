class HomeController < ApplicationController
  def show
    @resource = Cms::HomePage.load
    @resource.build_image unless @resource.image
  end
end
