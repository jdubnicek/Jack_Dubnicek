class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_menu

  def set_menu
    if !session[:menu_id].nil?
      Menu.find(session[:menu_id])
    elsif session[:menu_id].nil?
    rescue ActiveRecord::RecordNotFound
    else
      @menu = Menu.create
    end
  end
end
