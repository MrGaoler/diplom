class TeamController < ApplicationController
  def show
    @resource = Cms::TeamPage.load
    @resource.build_image unless @resource.image

    @members = Member.all
  end
end
