class SchedulesController < ApplicationController
  def show
    @resource = Cms::SchedulePage.load
    @resource.build_image unless @resource.image
  end
end
