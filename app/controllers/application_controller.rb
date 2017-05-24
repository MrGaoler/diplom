class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token

  rescue_from ActiveRecord::RecordNotFound, with: :on_record_not_found
  rescue_from AbstractController::ActionNotFound, with: :on_record_not_found
  rescue_from ActionController::RoutingError, with: :on_routing_error
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, alert: exception.message
  end

  def render_404
    if params[:format].present? && params[:format] != 'html'
      head status: 404
    else
      render 'application/404', status: 404
    end
  end

  def on_record_not_found
    render_404
  end

  def on_routing_error
    render_404
  end
end
