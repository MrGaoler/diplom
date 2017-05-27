class TeamsController < ApplicationController
  def show
    @resource = Cms::TeamPage.load
    @resource.build_image unless @resource.image
  end
end
