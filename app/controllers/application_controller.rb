class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  helper_method :current_order

  rescue_from Pundit::NotAuthorizedError do
    redirect_to root_url, alert: "You do not have access to this page."
  end

  def current_order
    if !session[:menu_id].nil?
      Menu.find(session[:menu_id])
    else
      @menu = Menu.create
    end
  end
end
