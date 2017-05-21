class ContactsController < ApplicationController
  def show
    @resource = Cms::ContactsPage.load
    @resource.build_image unless @resource.image
  end
end
