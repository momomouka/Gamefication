class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :null_session
  include SessionsHelper
  
    # before_actionにset_current_userメソッドを指定
  before_action :current_member

  include ApplicationHelper


end
