class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  protect_from_forgery with: :exception
  include SessionsHelper
  
    # before_actionにset_current_userメソッドを指定
  before_action :current_member
  
  include ApplicationHelper

    # 例外ハンドル
  unless Rails.env.development?
    rescue_from Exception,                        with: :_render_500
    rescue_from ActiveRecord::RecordNotFound,     with: :_render_404
    rescue_from ActionController::RoutingError,   with: :_render_404
  end
  def routing_error
    raise ActionController::RoutingError, params[:path]
  end
  private
  def _render_404(e = nil)
    logger.info "Rendering 404 with exception: #{e.message}" if e
    if request.format.to_sym == :json
      render file: Rails.root.join('public/404.html'), status: 404, layout: false, content_type: 'text/html'
    else
      render file: Rails.root.join('public/404.html'), status: 404, layout: false, content_type: 'text/html'
    end
  end
  def _render_500(e = nil)
    logger.error "Rendering 500 with exception: #{e.message}" if e
    Airbrake.notify(e) if e # Airbrake/Errbitを使う場合はこちら
    if request.format.to_sym == :json
      render file: Rails.root.join('public/500.html'), status: :internal_server_error , layout: false, content_type: 'text/html'
    else
      render file: Rails.root.join('public/500.html'), status: :internal_server_error , layout: false, content_type: 'text/html'
    end
  end

end
