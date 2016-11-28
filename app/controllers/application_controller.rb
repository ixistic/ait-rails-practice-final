class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |e|
    render '/layouts/unauthorized', status: :unauthorized
  end
end
