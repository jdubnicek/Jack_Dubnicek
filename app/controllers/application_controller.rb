class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if !session[:menu_id].nil?
      Menu.find(session[:menu_id])
    else
      @menu = Menu.create
    end
  end
end
