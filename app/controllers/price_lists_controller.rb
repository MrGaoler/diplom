class PriceListsController < ApplicationController
  def show
    @resource = Cms::PriceListPage.load
    @resource.build_image unless @resource.image
  end
end
