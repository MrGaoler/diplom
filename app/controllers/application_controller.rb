class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  %w[
    ActiveRecord::RecordNotFound
    AbstractController::ActionNotFound
    ActionController::RoutingError
    CanCan::AccessDenied
  ].each do |exception|
    rescue_from exception, with: :render_404
  end

  def render_404
    render 'application/404', status: 404
  end
end
