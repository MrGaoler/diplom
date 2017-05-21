class ContactsController < ApplicationController
  def show
    @resource = Cms::ContactsPage.load
  end
end
